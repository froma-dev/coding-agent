# Copilot Instructions - JavaScript Project

## Project Overview
<!-- Brief description of your JavaScript project -->
[Describe your JavaScript project here]

## JavaScript Version and Runtime
- **Node.js Version**: [e.g., >= 18.0.0]
- **Package Manager**: [e.g., npm, yarn, pnpm]
- **JavaScript Version**: [e.g., ES2022]

## Code Style and Conventions

### Style Guide
- Follow [Airbnb JavaScript Style Guide](https://github.com/airbnb/javascript)
- Use [ESLint](https://eslint.org/) for linting
- Use [Prettier](https://prettier.io/) for code formatting (recommended settings)
- Line length: 100 characters (configurable)

### Naming Conventions
- **Variables and Functions**: `camelCase`
- **Classes**: `PascalCase`
- **Constants**: `UPPER_SNAKE_CASE`
- **Private properties**: `#privateField` (modern) or `_privateField` (legacy)
- **Files**: `camelCase.js` or `kebab-case.js`

### JSDoc Comments
- Use JSDoc for all public functions and classes
- Document parameters, return values, and exceptions
- Example:
  ```javascript
  /**
   * Processes user data and returns formatted result
   * 
   * @param {Object} userData - The user data object
   * @param {string} userData.name - User's name
   * @param {number} userData.age - User's age
   * @param {Object} [options={}] - Optional configuration
   * @returns {Object} Formatted user data
   * @throws {TypeError} When userData is invalid
   */
  function processUserData(userData, options = {}) {
    // implementation
  }
  ```

### Module Imports
- Order imports: built-in modules → third-party packages → local modules
- Use ES6 modules (`import`/`export`)
- Example:
  ```javascript
  // Built-in Node.js modules
  import fs from 'fs';
  import path from 'path';
  
  // Third-party packages
  import express from 'express';
  import lodash from 'lodash';
  
  // Local modules
  import { config } from './config.js';
  import { UserService } from './services/UserService.js';
  ```

## Project Structure
```
project/
├── src/
│   ├── index.js
│   ├── config.js
│   ├── services/
│   ├── models/
│   └── utils/
├── tests/
│   ├── unit/
│   └── integration/
├── docs/
├── package.json
├── .eslintrc.js
├── .prettierrc
└── README.md
```

## Testing

### Testing Framework
- Use [Jest](https://jestjs.io/) or [Mocha](https://mochajs.org/) for testing
- Test files: `*.test.js` or `*.spec.js`
- Test function naming: `describe` and `it` blocks with clear descriptions

### Test Structure
- Follow Arrange-Act-Assert pattern
- Mock external dependencies
- Example:
  ```javascript
  import { describe, it, expect, jest } from '@jest/globals';
  import { UserService } from '../src/services/UserService.js';
  
  describe('UserService', () => {
    describe('createUser', () => {
      it('should create a new user with valid data', async () => {
        // Arrange
        const userData = { name: 'John Doe', email: 'john@example.com' };
        const service = new UserService();
        
        // Act
        const result = await service.createUser(userData);
        
        // Assert
        expect(result).toBeDefined();
        expect(result.name).toBe('John Doe');
      });
      
      it('should throw error when email is invalid', async () => {
        // Arrange
        const userData = { name: 'John Doe', email: 'invalid' };
        const service = new UserService();
        
        // Act & Assert
        await expect(service.createUser(userData)).rejects.toThrow('Invalid email');
      });
    });
  });
  ```

### Coverage
- Maintain minimum [X]% code coverage
- Run tests with coverage: `npm test -- --coverage`

## Error Handling

### Principles
- Use specific error types for different error conditions
- Always include meaningful error messages
- Log errors with sufficient context
- Handle async/await errors properly

### Error Classes
- Create custom error classes for domain-specific errors
- Example:
  ```javascript
  class ValidationError extends Error {
    constructor(message, field) {
      super(message);
      this.name = 'ValidationError';
      this.field = field;
    }
  }
  
  class DatabaseError extends Error {
    constructor(message, query) {
      super(message);
      this.name = 'DatabaseError';
      this.query = query;
    }
  }
  ```

### Async Error Handling
- Always use try-catch with async/await
- Example:
  ```javascript
  async function fetchUserData(userId) {
    try {
      const response = await fetch(`/api/users/${userId}`);
      
      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }
      
      const data = await response.json();
      return data;
    } catch (error) {
      console.error('Failed to fetch user data:', error);
      throw new DatabaseError('User data fetch failed', userId);
    }
  }
  ```

## Modern JavaScript Features

### Prefer Modern Syntax
- Use `const` and `let`, avoid `var`
- Use arrow functions for callbacks
- Use template literals for string interpolation
- Use destructuring assignment
- Use spread/rest operators
- Use optional chaining (`?.`) and nullish coalescing (`??`)
- Example:
  ```javascript
  // Destructuring
  const { name, age, ...rest } = user;
  const [first, second, ...others] = array;
  
  // Spread operator
  const newUser = { ...user, active: true };
  const combined = [...array1, ...array2];
  
  // Template literals
  const message = `Hello, ${name}! You are ${age} years old.`;
  
  // Arrow functions
  const double = (x) => x * 2;
  const numbers = [1, 2, 3].map(n => n * 2);
  
  // Optional chaining and nullish coalescing
  const userName = user?.profile?.name ?? 'Anonymous';
  ```

### Promises and Async/Await
- Prefer `async`/`await` over raw promises for better readability
- Use `Promise.all()` for parallel operations
- Use `Promise.race()` for timeout patterns
- Example:
  ```javascript
  // Parallel operations
  async function fetchMultipleUsers(userIds) {
    const promises = userIds.map(id => fetchUser(id));
    const users = await Promise.all(promises);
    return users;
  }
  
  // With error handling
  async function fetchWithFallback(url, fallbackUrl) {
    try {
      return await fetch(url);
    } catch (error) {
      console.warn('Primary fetch failed, trying fallback');
      return await fetch(fallbackUrl);
    }
  }
  ```

## Dependencies

### Dependency Management
- Keep dependencies minimal and justified
- Document why each dependency is needed
- Regularly update dependencies for security
- Use exact versions in `package.json` for critical dependencies
- Separate production and development dependencies

### Installing Dependencies
```bash
# Production dependency
npm install express

# Development dependency
npm install --save-dev jest eslint

# Update all dependencies
npm update
```

## Code Quality Tools

### ESLint Configuration
```javascript
// .eslintrc.js
module.exports = {
  env: {
    node: true,
    es2022: true,
  },
  extends: ['eslint:recommended'],
  parserOptions: {
    ecmaVersion: 'latest',
    sourceType: 'module',
  },
  rules: {
    'no-console': 'warn',
    'no-unused-vars': 'error',
    'prefer-const': 'error',
  },
};
```

### Prettier Configuration
```json
{
  "semi": true,
  "singleQuote": true,
  "tabWidth": 2,
  "trailingComma": "es5",
  "printWidth": 100
}
```

## JavaScript-Specific Best Practices

### Array Methods
- Use array methods instead of loops when appropriate
- Example:
  ```javascript
  // Filter, map, reduce
  const activeUsers = users.filter(u => u.active);
  const userNames = users.map(u => u.name);
  const totalAge = users.reduce((sum, u) => sum + u.age, 0);
  
  // Find and findIndex
  const admin = users.find(u => u.role === 'admin');
  const index = users.findIndex(u => u.id === targetId);
  
  // Some and every
  const hasAdmin = users.some(u => u.role === 'admin');
  const allActive = users.every(u => u.active);
  ```

### Object Methods
- Use modern object methods
- Example:
  ```javascript
  // Object destructuring with defaults
  function createUser({ name, age = 18, role = 'user' }) {
    return { name, age, role };
  }
  
  // Object.keys, values, entries
  const keys = Object.keys(user);
  const values = Object.values(user);
  const entries = Object.entries(user);
  
  // Object.assign and spread
  const merged = Object.assign({}, defaults, options);
  const merged2 = { ...defaults, ...options };
  ```

### Immutability
- Avoid mutating objects and arrays
- Use spread operators or methods that return new copies
- Example:
  ```javascript
  // Array immutability
  const newArray = [...oldArray, newItem]; // instead of push
  const filtered = array.filter(item => condition); // instead of splice
  
  // Object immutability
  const updated = { ...user, name: 'New Name' }; // instead of user.name = 'New Name'
  ```

## Logging

### Logging Setup
- Use a logging library like [Winston](https://github.com/winstonjs/winston) or [Pino](https://getpino.io/)
- Configure different log levels
- Example:
  ```javascript
  import winston from 'winston';
  
  const logger = winston.createLogger({
    level: process.env.LOG_LEVEL || 'info',
    format: winston.format.combine(
      winston.format.timestamp(),
      winston.format.json()
    ),
    transports: [
      new winston.transports.Console(),
      new winston.transports.File({ filename: 'error.log', level: 'error' }),
      new winston.transports.File({ filename: 'combined.log' }),
    ],
  });
  
  logger.info('Server started', { port: 3000 });
  logger.error('Database connection failed', { error: err.message });
  ```

## Performance Considerations
- Profile code before optimizing
- Use appropriate data structures (Map, Set vs Object, Array)
- Avoid blocking the event loop with heavy computations
- Use streams for large data processing
- Implement caching where appropriate
- Example:
  ```javascript
  // Using Map for better performance
  const userCache = new Map();
  
  function getCachedUser(userId) {
    if (userCache.has(userId)) {
      return userCache.get(userId);
    }
    
    const user = fetchUser(userId);
    userCache.set(userId, user);
    return user;
  }
  ```

## Security

### Best Practices
- Never commit secrets, API keys, or credentials
- Use environment variables for sensitive configuration
- Validate and sanitize all user input
- Use parameterized queries to prevent SQL injection
- Implement rate limiting for APIs
- Keep dependencies updated for security patches

### Environment Variables
```javascript
// .env file (never commit this)
DATABASE_URL=postgresql://localhost:5432/mydb
API_KEY=your_secret_key_here

// Loading environment variables
import dotenv from 'dotenv';
dotenv.config();

const dbUrl = process.env.DATABASE_URL;
const apiKey = process.env.API_KEY;
```

### Input Validation
```javascript
import validator from 'validator';

function validateUserInput(data) {
  if (!data.email || !validator.isEmail(data.email)) {
    throw new ValidationError('Invalid email address', 'email');
  }
  
  if (!data.age || !Number.isInteger(data.age) || data.age < 0) {
    throw new ValidationError('Invalid age', 'age');
  }
  
  return true;
}
```

## Documentation

### Code Documentation
- Use JSDoc for all public APIs
- Include usage examples in documentation
- Keep inline comments minimal and meaningful

### Project Documentation
- Maintain an up-to-date README.md
- Document API endpoints and usage
- Include setup and deployment instructions
- Maintain a CHANGELOG.md for version history
