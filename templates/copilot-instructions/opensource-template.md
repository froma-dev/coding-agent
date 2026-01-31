# Copilot Instructions - Open Source Project

## Project Overview

### Mission
<!-- What is the purpose of this open source project? -->
[Describe your project's mission and goals]

### Key Features
- [Feature 1]
- [Feature 2]
- [Feature 3]

## Getting Started for Contributors

### Prerequisites
- [Required software/tools]
- [Knowledge requirements]

### Development Setup
```bash
# Clone the repository
git clone https://github.com/[org]/[repo].git
cd [repo]

# Install dependencies
[installation commands]

# Run tests
[test commands]

# Start development environment
[dev server commands]
```

## Contributing Guidelines

### Code of Conduct
- We follow the [Contributor Covenant Code of Conduct](https://www.contributor-covenant.org/)
- Be respectful and inclusive
- Welcome newcomers and help them learn
- Provide constructive feedback

### How to Contribute

1. **Find an Issue**
   - Look for issues labeled `good first issue` or `help wanted`
   - Comment on the issue to claim it
   - Ask questions if anything is unclear

2. **Fork and Clone**
   - Fork the repository
   - Clone your fork locally
   - Add upstream remote: `git remote add upstream https://github.com/[org]/[repo].git`

3. **Create a Branch**
   - Branch naming: `feature/description`, `fix/description`, `docs/description`
   - Base your work on the `main` or `develop` branch
   - Keep branches focused on a single issue

4. **Make Changes**
   - Follow the code style guidelines below
   - Write clear, self-documenting code
   - Add tests for new functionality
   - Update documentation as needed

5. **Test Your Changes**
   - Run the full test suite
   - Test manually if applicable
   - Ensure no existing functionality is broken

6. **Commit Your Changes**
   - Write clear commit messages
   - Follow conventional commits format
   - Reference issue numbers: `fixes #123`

7. **Push and Create Pull Request**
   - Push to your fork
   - Create a pull request with a clear description
   - Link to related issues
   - Be ready to address review feedback

## Code Style and Quality

### Style Guidelines
- Follow [language-specific style guide]
- Use the provided linter/formatter configuration
- Keep code readable and maintainable
- Write comments for complex logic

### Code Review Process
- All changes require review before merging
- Address all review comments
- Be patient and respectful during review
- Reviewers: provide constructive, actionable feedback

### Quality Standards
- All tests must pass
- Maintain or improve code coverage
- No linting errors
- Documentation must be updated

## Testing Requirements

### For New Features
- Write unit tests for all new code
- Add integration tests where applicable
- Update E2E tests if user-facing changes
- Maintain minimum [X]% coverage

### Test Conventions
```bash
# Run unit tests
[command]

# Run integration tests
[command]

# Run all tests
[command]

# Run with coverage
[command]
```

## Documentation

### Code Documentation
- Document all public APIs
- Use inline comments sparingly
- Provide usage examples

### Project Documentation
- Update README.md for major changes
- Update relevant docs in `/docs` folder
- Keep CHANGELOG.md updated
- Update API documentation

## Issue Guidelines

### Reporting Bugs
When reporting bugs, include:
- Clear title and description
- Steps to reproduce
- Expected vs actual behavior
- System information (OS, version, etc.)
- Screenshots or error messages if applicable

### Suggesting Features
When suggesting features, include:
- Clear use case
- Proposed solution
- Alternative solutions considered
- Willingness to implement

### Issue Labels
- `bug`: Something isn't working
- `enhancement`: New feature or request
- `documentation`: Improvements or additions to documentation
- `good first issue`: Good for newcomers
- `help wanted`: Extra attention is needed
- `question`: Further information is requested

## Pull Request Guidelines

### PR Title and Description
- Use clear, descriptive title
- Reference related issues
- Describe what changed and why
- Include testing steps
- Add screenshots for UI changes

### PR Template
```markdown
## Description
[Describe your changes]

## Related Issues
Fixes #[issue number]

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change
- [ ] Documentation update

## Testing
- [ ] Tests added/updated
- [ ] All tests passing
- [ ] Manual testing completed

## Checklist
- [ ] Code follows project style guidelines
- [ ] Self-review completed
- [ ] Comments added for complex code
- [ ] Documentation updated
- [ ] No new warnings generated
```

### Review Process
- Maintainers will review within [timeframe]
- Address all requested changes
- Keep PR updated with main branch
- Be responsive to feedback

## Versioning and Releases

### Versioning Scheme
- We follow [Semantic Versioning](https://semver.org/)
- Format: MAJOR.MINOR.PATCH
- Breaking changes increment MAJOR
- New features increment MINOR
- Bug fixes increment PATCH

### Release Process
- Releases are handled by maintainers
- Contributors should update CHANGELOG.md
- Tag releases with version numbers

## Communication

### Channels
- **Issues**: Bug reports, feature requests
- **Discussions**: General questions, ideas
- **[Chat platform]**: Real-time communication
- **Email**: [maintainer email] for private matters

### Getting Help
- Check existing issues and documentation first
- Ask in discussions or chat for general questions
- Be specific about your problem
- Provide context and examples

## License

This project is licensed under [LICENSE NAME]. By contributing, you agree that your contributions will be licensed under the same license.

## Recognition

### Contributors
- All contributors are recognized in our [Contributors page/README]
- Significant contributions may be highlighted in release notes

### Maintainers
- [List current maintainers]
- [How to become a maintainer]

## Project-Specific Guidelines

### Architecture
[Brief overview of project architecture]

### Key Concepts
[Important concepts contributors should understand]

### Common Pitfalls
- [Common mistake 1 and how to avoid it]
- [Common mistake 2 and how to avoid it]

## Resources

### Documentation
- [Main documentation link]
- [API documentation]
- [Architecture diagrams]

### Learning Resources
- [Relevant tutorials]
- [Related projects]
- [Helpful articles]

## Continuous Integration

### CI/CD Pipeline
- Tests run automatically on PRs
- Linting must pass
- Coverage must meet threshold
- Build must succeed

### Pre-commit Hooks (if applicable)
```bash
# Install pre-commit hooks
[installation command]
```

## Security

### Reporting Security Vulnerabilities
- **DO NOT** open public issues for security vulnerabilities
- Email security concerns to: [security email]
- Include steps to reproduce
- We will respond within [timeframe]

### Security Best Practices
- Never commit secrets or credentials
- Use environment variables for sensitive data
- Follow OWASP guidelines
- Keep dependencies updated

## Accessibility

### Standards
- Follow WCAG [version] guidelines
- Test with screen readers
- Ensure keyboard navigation
- Maintain semantic HTML

## Internationalization (if applicable)

### Translation
- All user-facing strings should be translatable
- Follow [i18n framework] conventions
- Translations welcome for all languages

## Thank You!

Thank you for contributing to [Project Name]! Every contribution, no matter how small, helps make this project better. We appreciate your time and effort! 🎉
