const canvas = document.getElementById("matrix");
const ctx = canvas.getContext("2d");

const glyphs = "01<>[]{}$#*+-=:/\\";
const columns = [];
let cellSize = 16;

function resize() {
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
    cellSize = Math.max(12, Math.floor(window.innerWidth / 90));

    const count = Math.ceil(canvas.width / cellSize);
    columns.length = 0;
    for (let i = 0; i < count; i += 1) {
        columns.push(Math.random() * canvas.height);
    }
}

function draw() {
    ctx.fillStyle = "rgba(4, 7, 7, 0.08)";
    ctx.fillRect(0, 0, canvas.width, canvas.height);

    ctx.font = `${cellSize}px JetBrains Mono`;
    ctx.fillStyle = "#2effb2";

    for (let i = 0; i < columns.length; i += 1) {
        const text = glyphs.charAt(Math.floor(Math.random() * glyphs.length));
        const x = i * cellSize;
        const y = columns[i] * 0.9;
        ctx.fillText(text, x, y);

        if (y > canvas.height + Math.random() * 800) {
            columns[i] = 0;
        }
        columns[i] += cellSize;
    }
}

resize();
setInterval(draw, 70);
window.addEventListener("resize", resize);