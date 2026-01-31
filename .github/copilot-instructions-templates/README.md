# Copilot Instructions Templates

This directory contains templates for `.github/copilot-instructions.md` files that you can use in your GitHub repositories.

## What is copilot-instructions.md?

The `.github/copilot-instructions.md` file allows you to provide custom instructions to GitHub Copilot about your codebase, coding standards, and best practices. When developers use Copilot in your repository, these instructions help guide the AI to generate more relevant and consistent code suggestions.

## Available Templates

### 1. `basic-template.md`
A minimal template with essential sections. Good for small projects or getting started quickly.

### 2. `python-template.md`
Comprehensive Python template with PEP 8 conventions, type hints, pytest patterns, and Python-specific best practices.

### 3. `javascript-template.md`
Comprehensive JavaScript template with modern ES6+ conventions, testing patterns, and Node.js best practices.

## How to Use

### Using the Selection Script (Recommended)

Run the interactive script to choose and copy a template:

```bash
bash .github/select-copilot-template.sh
```

The script will guide you through selecting a template and automatically copy it to `.github/copilot-instructions.md`.

### Manual Copy

1. Choose the template that best fits your project
2. Copy the template to `.github/copilot-instructions.md` in your repository root
3. Customize the template with your project-specific details
4. Commit and push the file to your repository

```bash
# Example: Copy the basic template
cp .github/copilot-instructions-templates/basic-template.md .github/copilot-instructions.md

# Example: Copy the Python template
cp .github/copilot-instructions-templates/python-template.md .github/copilot-instructions.md
```

## Tips

- Keep instructions clear and concise
- Focus on project-specific conventions that aren't obvious from the code
- Update the instructions as your project evolves
- Include examples where helpful
- Consider linking to your full documentation for detailed guidelines
