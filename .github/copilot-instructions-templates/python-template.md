# Copilot Instructions - Python Project

## Project Overview
<!-- Brief description of your Python project -->
[Describe your Python project here]

## Python Version
- **Minimum Python Version**: [e.g., 3.8+]
- **Recommended Python Version**: [e.g., 3.11+]

## Code Style and Conventions

### Style Guide
- Follow [PEP 8](https://pep8.org/) style guide
- Use [Black](https://black.readthedocs.io/) for code formatting (line length: 88 chars)
- Use [isort](https://pycqa.github.io/isort/) for import sorting
- Use [flake8](https://flake8.pycqa.org/) or [ruff](https://beta.ruff.rs/docs/) for linting

### Naming Conventions
- **Variables and Functions**: `snake_case`
- **Classes**: `PascalCase`
- **Constants**: `UPPER_SNAKE_CASE`
- **Private attributes**: `_leading_underscore`
- **Modules**: `snake_case.py`

### Type Hints
- Use type hints for all function signatures
- Use `typing` module for complex types
- Example:
  ```python
  from typing import List, Optional, Dict
  
  def process_data(items: List[str], config: Optional[Dict[str, Any]] = None) -> bool:
      pass
  ```

### Docstrings
- Use Google-style or NumPy-style docstrings
- Document all public functions, classes, and modules
- Example (Google style):
  ```python
  def function_with_docstring(param1: int, param2: str) -> bool:
      """Brief description of function.
      
      Longer description if needed.
      
      Args:
          param1: Description of param1
          param2: Description of param2
          
      Returns:
          Description of return value
          
      Raises:
          ValueError: When param1 is negative
      """
      pass
  ```

### Imports
- Order imports: standard library → third-party → local
- Use absolute imports, avoid relative imports when possible
- Example:
  ```python
  import os
  import sys
  
  import requests
  import numpy as np
  
  from myproject import utils
  from myproject.models import User
  ```

## Project Structure
```
project/
├── src/
│   └── myproject/
│       ├── __init__.py
│       ├── module1.py
│       └── module2.py
├── tests/
│   ├── __init__.py
│   ├── test_module1.py
│   └── test_module2.py
├── docs/
├── requirements.txt
├── requirements-dev.txt
├── setup.py or pyproject.toml
└── README.md
```

## Testing

### Testing Framework
- Use [pytest](https://pytest.org/) for testing
- Test files: `test_*.py` or `*_test.py`
- Test functions: `test_*`

### Test Structure
```python
import pytest
from myproject.module import function_to_test

def test_function_basic_case():
    # Arrange
    input_data = "test"
    expected = "expected_result"
    
    # Act
    result = function_to_test(input_data)
    
    # Assert
    assert result == expected

@pytest.fixture
def sample_data():
    return {"key": "value"}

def test_with_fixture(sample_data):
    assert sample_data["key"] == "value"
```

### Coverage
- Maintain minimum [X]% code coverage
- Run tests with coverage: `pytest --cov=myproject tests/`

## Error Handling

### Exceptions
- Use built-in exceptions when appropriate
- Create custom exceptions for domain-specific errors
- Example:
  ```python
  class MyProjectError(Exception):
      """Base exception for myproject."""
      pass
  
  class InvalidConfigError(MyProjectError):
      """Raised when configuration is invalid."""
      pass
  ```

### Error Messages
- Provide clear, actionable error messages
- Include relevant context in exceptions

## Dependencies

### Dependency Management
- Use `requirements.txt` for production dependencies
- Use `requirements-dev.txt` for development dependencies
- Or use `pyproject.toml` with Poetry/PDM
- Pin versions for reproducible builds

### Virtual Environment
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r requirements.txt
```

## Code Quality Tools

### Pre-commit Hooks (if applicable)
```yaml
# .pre-commit-config.yaml
repos:
  - repo: https://github.com/psf/black
    rev: 23.1.0
    hooks:
      - id: black
  - repo: https://github.com/pycqa/isort
    rev: 5.12.0
    hooks:
      - id: isort
  - repo: https://github.com/pycqa/flake8
    rev: 6.0.0
    hooks:
      - id: flake8
```

## Python-Specific Best Practices

### Context Managers
- Use context managers for resource management
- Example:
  ```python
  with open('file.txt', 'r') as f:
      content = f.read()
  ```

### List Comprehensions
- Prefer comprehensions for simple transformations
- Avoid complex nested comprehensions
- Example:
  ```python
  # Good
  squares = [x**2 for x in range(10)]
  
  # Avoid (too complex)
  result = [x for sublist in [[y**2 for y in range(x)] for x in range(5)] for x in sublist]
  ```

### Generators
- Use generators for large datasets to save memory
- Example:
  ```python
  def read_large_file(file_path):
      with open(file_path) as f:
          for line in f:
              yield line.strip()
  ```

### Dataclasses (Python 3.7+)
- Use dataclasses for simple data containers
- Example:
  ```python
  from dataclasses import dataclass
  
  @dataclass
  class User:
      name: str
      age: int
      email: str
  ```

## Logging

### Logging Setup
```python
import logging

logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)

logger = logging.getLogger(__name__)

logger.info("Information message")
logger.error("Error message")
```

## Async/Await (if applicable)
- Use `asyncio` for asynchronous operations
- Follow async/await best practices
- Example:
  ```python
  import asyncio
  
  async def fetch_data(url: str) -> dict:
      # async implementation
      pass
  
  async def main():
      result = await fetch_data("https://api.example.com")
  
  if __name__ == "__main__":
      asyncio.run(main())
  ```

## Performance Considerations
- Profile code before optimizing
- Use appropriate data structures (list vs tuple vs set vs dict)
- Consider using `__slots__` for classes with many instances
- Use `functools.lru_cache` for memoization

## Security
- Never commit secrets or API keys
- Use environment variables for sensitive data
- Validate and sanitize all user input
- Use parameterized queries for database operations

## Documentation
- Keep README.md up to date
- Use Sphinx or MkDocs for documentation generation
- Include docstrings for all public APIs
- Provide usage examples
