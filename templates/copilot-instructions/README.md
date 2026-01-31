# Copilot Instructions Templates

This directory contains templates for `.github/copilot-instructions.md` files that you can use in your GitHub repositories.

## What is copilot-instructions.md?

The `.github/copilot-instructions.md` file allows you to provide custom instructions to GitHub Copilot about your codebase, coding standards, and best practices. When developers use Copilot in your repository, these instructions help guide the AI to generate more relevant and consistent code suggestions.

## Available Templates

### 1. `basic-template.md`
A minimal template with essential sections. Good for small projects or getting started quickly.

### 2. `comprehensive-template.md`
A detailed template covering all aspects of development guidelines. Ideal for larger projects with established conventions.

### 3. `python-template.md`
Optimized for Python projects with Python-specific conventions and best practices.

### 4. `javascript-template.md`
Tailored for JavaScript/TypeScript projects with modern JS ecosystem conventions.

### 5. `opensource-template.md`
Designed for open source projects with emphasis on contribution guidelines and community standards.

## How to Use

1. Choose the template that best fits your project
2. Copy the template to `.github/copilot-instructions.md` in your repository root
3. Customize the template with your project-specific details
4. Commit and push the file to your repository
5. GitHub Copilot will automatically use these instructions when developers work in your repository

## Tips

- Keep instructions clear and concise
- Focus on project-specific conventions that aren't obvious from the code
- Update the instructions as your project evolves
- Include examples where helpful
- Consider linking to your full documentation for detailed guidelines

## Example

```bash
# Copy a template to your repository
cp templates/copilot-instructions/basic-template.md /path/to/your/repo/.github/copilot-instructions.md

# Or create the .github directory if it doesn't exist
mkdir -p /path/to/your/repo/.github
cp templates/copilot-instructions/comprehensive-template.md /path/to/your/repo/.github/copilot-instructions.md
```
