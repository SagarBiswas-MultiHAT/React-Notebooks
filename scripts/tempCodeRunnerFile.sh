#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="${1:-.}"
cd "$ROOT_DIR"

failures=0
warnings=0
site_base_url=""

err() {
  printf '[SEO FAIL] %s\n' "$1"
  failures=$((failures + 1))
}

warn() {
  printf '[SEO WARN] %s\n' "$1"
  warnings=$((warnings + 1))
}

info() {
  printf '[SEO INFO] %s\n' "$1"
}

require_tool() {
  local tool="$1"
  command -v "$tool" >/dev/null 2>&1 || {
    printf '[SEO FAIL] Missing required tool: %s\n' "$tool"
    exit 1
  }
}

extract_meta_content() {
  local file="$1"
  local name="$2"
  SEO_META_NAME="$name" perl -0777 -ne '
    my $name = quotemeta $ENV{SEO_META_NAME};
    if (/<meta\b(?=[^>]*\bname=["\x27]$name["\x27])(?=[^>]*\bcontent=["\x27]([^"\x27]+)["\x27])[^>]*>/is) {
      print $1;
    }
  ' "$file"
}

extract_link_href() {
  local file="$1"
  local rel="$2"
  SEO_LINK_REL="$rel" perl -0777 -ne '
    my $rel = quotemeta $ENV{SEO_LINK_REL};
    if (/<link\b(?=[^>]*\brel=["\x27]$rel["\x27])(?=[^>]*\bhref=["\x27]([^"\x27]+)["\x27])[^>]*>/is) {
      print $1;
    }
  ' "$file"
}

extract_link_href_with_type() {
  local file="$1"
  local rel="$2"
  local type="$3"
  SEO_LINK_REL="$rel" SEO_LINK_TYPE="$type" perl -0777 -ne '
    my $rel = quotemeta $ENV{SEO_LINK_REL};
    my $type = quotemeta $ENV{SEO_LINK_TYPE};
    if (/<link\b(?=[^>]*\brel=["\x27]$rel["\x27])(?=[^>]*\btype=["\x27]$type["\x27])(?=[^>]*\bhref=["\x27]([^"\x27]+)["\x27])[^>]*>/is) {
      print $1;
    }
  ' "$file"
}

extract_title() {
  local file="$1"
  perl -0777 -ne '
    if (/<title>(.*?)<\/title>/is) {
      my $title = $1;
      $title =~ s/^\s+|\s+$//g;
      $title =~ s/\s+/ /g;
      print $title;
    }
  ' "$file"
}

extract_front_matter() {
  local file="$1"
  perl -0777 -ne 'if (/\A---\s*\n(.*?)\n---\s*(?:\n|\z)/s) { print $1; }' "$file"
}

extract_sitemap_urls() {
  local file="$1"
  perl -0777 -ne 'while (/<loc>\s*([^<\s]+)\s*<\/loc>/g) { print "$1\n"; }' "$file"
}

extract_robots_sitemap_urls() {
  local file="$1"
  sed -nE 's/^[[:space:]]*[Ss]itemap:[[:space:]]*(https:\/\/[^[:space:]]+)[[:space:]]*$/\1/p' "$file"
}

extract_feed_id() {
  local file="$1"
  perl -0777 -ne 'if (/<feed\b.*?<id>\s*([^<]+)\s*<\/id>/is) { print $1; }' "$file"
}

extract_feed_self_href() {
  local file="$1"
  perl -0777 -ne 'if (/<link\b(?=[^>]*\brel=["\x27]self["\x27])(?=[^>]*\bhref=["\x27]([^"\x27]+)["\x27])[^>]*>/is) { print $1; }' "$file"
}

strip_wrapping_quotes() {
  local value="$1"

  value="${value#"${value%%[![:space:]]*}"}"
  value="${value%"${value##*[![:space:]]}"}"

  case "$value" in
    \"*\")
      value="${value:1:-1}"
      ;;
    \'*\')
      value="${value:1:-1}"
      ;;
  esac

  printf '%s' "$value"
}

front_matter_value() {
  local front_matter="$1"
  local key="$2"

  grep -m1 -E "^${key}:[[:space:]]*.+$" <<<"$front_matter" | sed -E "s/^${key}:[[:space:]]*//" || true
