# React Notebooks

This repository contains my complete React learning notes in 3 PDF volumes.
I wrote these notes while learning step by step, so the style is simple and practical.
If someone is new to React, this repo can be used like a full roadmap from beginner to building real mini-projects.

## Live Website

- Portfolio site (GitHub Pages): configure Pages to deploy from GitHub Actions after first push.
- Main page file: `index.html`
- Visual style: dark terminal / hacker aesthetic

## Notebook Files (Attached PDFs)

1. [React Part 1 (Topics 1-11)](<React_Part-1(1 to 11).pdf>)
2. [React Part 2 (Topics 12-24)](<React_Part-2(12 to 24).pdf>)
3. [React Part 3 (Topics 25-30)](<React_Part-3(25 to 30).pdf>)

## What This Repository Covers

This notebook series covers:

- React fundamentals
- Environment and setup (Vite + CRA)
- JSX and CSS in React
- Components and props
- Mapping and list rendering
- Class components and hooks
- `state`, `setState`, events, and binding
- `useState` and previous state updates
- Event bubbling and `stopPropagation`
- Controlled forms
- Child to parent communication
- State lifting
- Todo app architecture (basic and advanced)

## Full Topic and Subtopic Index (Part 1 to Part 30)

The sections below are based on the notebook headings and examples from the attached PDFs.

### Part 1: Introduction to React

- What React is
- Why React is used for UI
- React as a library vs framework
- Reusable component idea

Understanding after this part:
You understand why React is popular and how component-based UI solves repetition problems.

### Part 2: Environment Setup

- Required tools (Node.js, npm, VS Code)
- Basic terminal commands
- Checking installed versions

Understanding after this part:
You can prepare a machine for React development and verify setup correctly.

### Part 3: Setting up React with Vite

- Creating a React app using Vite
- Running local dev server
- Folder overview

Understanding after this part:
You can start a fast modern React project from zero.

### Part 3 (continued): Create React App (CRA)

- Creating React app with CRA
- Running and understanding CRA project structure
- Difference in setup style compared to Vite

Understanding after this part:
You can work with both common setup methods used in tutorials and projects.

### Part 4: JSX and JavaScript Expressions

- What JSX is
- Embedding JavaScript in JSX with `{}`
- One root element rule
- Fragment usage

Understanding after this part:
You can write clean JSX and avoid common syntax mistakes.

### Part 5: CSS Styling in JSX

- Inline style
- External CSS file
- Import CSS into component
- `className` usage

Understanding after this part:
You can style React components in multiple ways and choose the right one per situation.

### Part 6: Create and Use Components

- Functional components
- Class components overview
- Component naming rule (Capitalized)
- Creating components in same file and separate file

Understanding after this part:
You can structure UI into reusable components with proper file organization.

### Part 7: Props and Destructuring

- What props are
- Parent to child data flow
- Props destructuring

Understanding after this part:
You can pass dynamic data into reusable components.

### Part 8: Mapping Data to Components

- Rendering arrays with `.map()`
- Passing mapped values as props
- JSON data rendering pattern

Understanding after this part:
You can generate repeating UI from data instead of writing static repeated markup.

### Part 9: Mapping with Unique IDs

- Why `key` prop is required
- Unique key for stable list rendering

Understanding after this part:
You can avoid list rendering warnings and understand React update behavior better.

### Part 10: Nested Mapping

- Mapping arrays inside arrays
- Rendering nested data structures

Understanding after this part:
You can render complex object data with parent-child nested views.

### Part 11: Assignment 1 - Product Listing App

- Combine components, props, mapping, styling
- Build one mini app from learned concepts

Understanding after this part:
You can complete a simple project by combining multiple beginner concepts.

### Part 12: Class Components in React

- Class syntax
- `render()` method
- `this.props` and state context

Understanding after this part:
You can read older React codebases and understand class component structure.

### Part 13: React Component Under the Hood

- JSX to `React.createElement()`
- Babel compilation idea
- JSX vs non-JSX comparison

Understanding after this part:
You understand what React actually executes behind JSX syntax.

### Part 14: Developer Tools and Extensions

- VS Code React snippets (`rafce`, `rfc`, etc.)
- React Developer Tools in browser
- Inspect component tree, props, and state

Understanding after this part:
You can debug faster and write components with productivity shortcuts.

### Part 15: React Icons

- Installing `react-icons`
- Importing icon packs as components
- Styling icons in UI

Understanding after this part:
You can improve UI readability with scalable icon components.

### Part 16: Bootstrap with React

- Installing `bootstrap` and `react-bootstrap`
- Importing global Bootstrap CSS
- Using Bootstrap components (`Card`, `Button`, etc.)

Understanding after this part:
You can build cleaner layouts quickly using reusable UI toolkit components.

### Part 17: `state`, `setState()`, Event Handler (Class)

- Props vs state
- Counter update with `setState()`
- Class component event handling

Understanding after this part:
You know when to use state and how updates trigger rerender.

### Part 18: Conditional Rendering

- `if/else`
- variable-based rendering
- ternary rendering
- short-circuit rendering

Understanding after this part:
You can show and hide UI based on runtime conditions.

### Part 19: Event Handler `onChange` and `onClick`

- Input event handling
- Click handling
- Asynchronous state update behavior
- Callback usage after state update

Understanding after this part:
You can safely manage user input and avoid confusion with async state updates.

### Part 20: Event Handler Binding in React

- Why `this` binding matters in class methods
- Constructor binding vs arrow methods

Understanding after this part:
You can prevent `this`-related bugs in class components.

### Part 21: React Hooks - `useState`

- Basic `useState` syntax
- Functional component state handling

Understanding after this part:
You can manage state without class components.

### Part 22: Update State from Previous State

- Batching behavior in state updates
- Functional updater pattern: `setCount(prev => prev + 1)`

Understanding after this part:
You can write reliable increments/decrements that depend on previous values.

### Part 23: Event Bubbling and `stopPropagation()`

- Bubbling concept
- Parent and child click flow
- Preventing propagation

Understanding after this part:
You can control event flow when nested elements have different click behavior.

### Part 24: Assignment 2 - Counter App

- State updates
- Events
- Conditional rendering practice

Understanding after this part:
You can confidently build interactive components using hooks and handlers.

### Part 25: Controlled Component - Form Data

- Controlled inputs with state
- Form submit handling with `preventDefault`
- Basic validation idea

Understanding after this part:
You can build a controlled registration form in React.

### Part 26: `useState` with Object

- Managing multiple form fields in one object state
- Dynamic input update using field names
- Spread operator for immutable updates

Understanding after this part:
You can scale forms without many separate state variables.

### Part 27: Child to Parent Data Communication

- Passing function from parent to child
- Child calling parent callback with data
- Strict mode double render note in development

Understanding after this part:
You can send data upward in component tree correctly.

### Part 28: More on State Lifting

- Sharing data between sibling components via common parent
- Parent as source of truth

Understanding after this part:
You can plan clean component communication architecture.

### Part 29: Basic Todo App (State Lifting)

- Parent keeps todo list state
- Child form sends new todo
- List component maps and renders items

Understanding after this part:
You can build a working multi-component Todo app.

### Part 30: Complete Todo App

- Add / edit / delete todo flows
- Form prefill for edit
- Priority and due date handling
- Dynamic style classes by priority

Understanding after this part:
You can create a complete CRUD-style React mini project with clean interaction flow.

## Assignments and Related Project Links

- Assignment 1 project:
	https://github.com/SagarBiswas-MultiHAT/react-assignment-1-product-listing-app
- Practice repo:
	https://github.com/SagarBiswas-MultiHAT/react-practice

## Repository Structure

```text
.
|-- .github/
|   `-- workflows/
|       `-- pages.yml
|-- index.html
|-- styles.css
|-- script.js
|-- React_Part-1(1 to 11).pdf
|-- React_Part-2(12 to 24).pdf
|-- React_Part-3(25 to 30).pdf
`-- README.md
```

## Hosting with GitHub Pages (Using GitHub Actions)

This repo is configured with `.github/workflows/pages.yml`.

### Steps

1. Push this repository to GitHub on branch `main`.
2. Go to repository Settings -> Pages.
3. In Build and deployment, select `GitHub Actions` as source.
4. Push one commit (or run workflow manually from Actions tab).
5. Wait for workflow to pass.

If the workflow passes, you should get the green check for "Get started with GitHub Actions" and the site URL under Pages.

## Why this README is detailed

I wanted a reader to understand the full notebook journey even before opening the PDFs.
So each part has topic points plus "Understanding after this part" to make the learning progression very clear.

## Author

Sagar Biswas