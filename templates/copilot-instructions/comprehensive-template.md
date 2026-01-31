# Copilot Instructions

## Project Overview

### Purpose
<!-- What problem does this project solve? -->
[Describe the main purpose and goals of your project]

### Architecture
<!-- High-level architecture overview -->
[Describe the main components and how they interact]

### Key Technologies
<!-- List the main technologies used -->
- [Technology 1]
- [Technology 2]
- [Technology 3]

## Code Style and Conventions

### General Guidelines
- Follow the style guide defined in [link to style guide]
- Use consistent formatting (enforced by [linter/formatter])
- Write self-documenting code with clear intent
- Avoid premature optimization
- Keep functions small and focused (single responsibility)

### Naming Conventions
- **Variables**: [e.g., camelCase, snake_case]
- **Functions**: [e.g., camelCase, snake_case]
- **Classes**: [e.g., PascalCase]
- **Constants**: [e.g., UPPER_SNAKE_CASE]
- **Files**: [e.g., kebab-case, snake_case]

### Code Organization
- Group related functionality together
- Keep modules cohesive and loosely coupled
- Follow the established directory structure:
  ```
  [Your directory structure here]
  ```

### Comments and Documentation
- Write JSDoc/docstrings for all public APIs
- Use inline comments sparingly for complex logic
- Keep comments up-to-date with code changes
- Explain "why" not "what" in comments

## Testing Strategy

### Test Requirements
- All new features must include tests
- Maintain minimum [X]% code coverage
- Follow the testing pyramid (unit > integration > e2e)

### Test Conventions
- Test file naming: [pattern, e.g., `*.test.js`, `test_*.py`]
- Use descriptive test names that explain the scenario
- Follow Arrange-Act-Assert pattern
- Mock external dependencies

### Running Tests
```bash
[Command to run tests]
```

## Error Handling

### Principles
- Fail fast and provide clear error messages
- Use appropriate error types/classes
- Log errors with sufficient context
- Handle edge cases explicitly

### Best Practices
- [Project-specific error handling patterns]
- [How to handle async errors]
- [Logging standards]

## Security Considerations

### General Security
- Never commit secrets or credentials
- Validate all user input
- Use parameterized queries for database operations
- Follow OWASP best practices

### Authentication & Authorization
- [Your auth patterns]
- [Permission checking approaches]

## Performance

### Guidelines
- [Database query optimization patterns]
- [Caching strategies]
- [Resource management best practices]

## Dependencies

### Adding Dependencies
- Evaluate necessity before adding new dependencies
- Check for security vulnerabilities
- Prefer well-maintained libraries
- Document the reason for each dependency

### Version Management
- [Your approach: lock files, version ranges, etc.]
- Keep dependencies up to date
- Test after dependency updates

## API Design

### RESTful Conventions (if applicable)
- Use appropriate HTTP methods (GET, POST, PUT, DELETE)
- Follow consistent URL patterns
- Return appropriate status codes
- Version your APIs

### Request/Response Format
- [Your format: JSON, XML, etc.]
- [Schema validation approach]
- [Pagination patterns]

## Database

### Schema Changes
- [Migration strategy]
- Always provide rollback capability
- Test migrations in non-production first

### Query Patterns
- [Your ORM/query patterns]
- [Indexing guidelines]
- [Transaction management]

## Git Workflow

### Branching Strategy
- [Your branching model: gitflow, trunk-based, etc.]
- Branch naming: [pattern, e.g., `feature/`, `bugfix/`]

### Commit Messages
- Follow [conventional commits/your standard]
- Format: [your format]
- Include ticket/issue numbers when applicable

### Pull Requests
- Fill out the PR template completely
- Request review from [appropriate team/person]
- Ensure CI passes before requesting review
- Keep PRs focused and reasonably sized

## CI/CD

### Continuous Integration
- All tests must pass
- Linting must pass
- Code coverage requirements: [X%]

### Deployment
- [Your deployment process]
- [Environment-specific considerations]

## Documentation

### Code Documentation
- Document all public APIs
- Include usage examples
- Keep documentation in sync with code

### Project Documentation
- Update README.md for user-facing changes
- Update CHANGELOG.md for each release
- Maintain architectural decision records (ADRs)

## Accessibility (if applicable)
- Follow WCAG [version] guidelines
- Test with screen readers
- Ensure keyboard navigation
- Use semantic HTML

## Internationalization (if applicable)
- All user-facing strings must be translatable
- [Your i18n framework/approach]
- Support RTL languages

## Contact and Resources

### Key Resources
- [Documentation link]
- [Wiki/Confluence]
- [Slack/Teams channel]

### Getting Help
- [How to ask for help]
- [Team contacts]
