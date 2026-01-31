# Copilot Instructions - JavaScript/TypeScript Project

## Project Overview
<!-- Brief description of your JavaScript/TypeScript project -->
[Describe your project here]

## Runtime and Version
- **Node.js Version**: [e.g., >= 18.0.0]
- **Package Manager**: [npm/yarn/pnpm]
- **Language**: [JavaScript/TypeScript]

## Code Style and Conventions

### Style Guide
- Follow [Airbnb JavaScript Style Guide](https://github.com/airbnb/javascript) or [StandardJS](https://standardjs.com/)
- Use [ESLint](https://eslint.org/) for linting
- Use [Prettier](https://prettier.io/) for code formatting
- If TypeScript: Follow [TypeScript Deep Dive](https://basarat.gitbook.io/typescript/) guidelines

### Naming Conventions
- **Variables and Functions**: `camelCase`
- **Classes and Components**: `PascalCase`
- **Constants**: `UPPER_SNAKE_CASE` or `camelCase`
- **Private properties**: `#privateField` (modern) or `_privateField` (legacy)
- **Files**: `kebab-case.js` or `PascalCase.tsx` for components

### TypeScript-Specific (if applicable)
- Always use explicit types, avoid `any`
- Use interfaces for object shapes
- Use type aliases for unions and complex types
- Example:
  ```typescript
  interface User {
    id: string;
    name: string;
    email: string;
    role: 'admin' | 'user';
  }
  
  type Result<T> = Success<T> | Error;
  
  function getUser(id: string): Promise<User> {
    // implementation
  }
  ```

### Code Organization
- Use ES6 modules (`import`/`export`)
- One component/class per file
- Group related functionality
- Example structure:
  ```
  src/
  ├── components/
  ├── utils/
  ├── services/
  ├── hooks/ (React)
  ├── types/
  └── index.ts
  ```

### Comments and Documentation
- Use JSDoc for function documentation
- Example:
  ```javascript
  /**
   * Calculates the sum of two numbers
   * @param {number} a - First number
   * @param {number} b - Second number
   * @returns {number} The sum of a and b
   */
  function add(a, b) {
    return a + b;
  }
  ```

## Modern JavaScript Features

### Prefer Modern Syntax
- Use `const` and `let`, avoid `var`
- Use arrow functions for callbacks
- Use template literals for strings
- Use destructuring
- Use spread operator
- Example:
  ```javascript
  // Destructuring
  const { name, age } = user;
  const [first, ...rest] = array;
  
  // Spread operator
  const newObj = { ...oldObj, newProp: 'value' };
  
  // Template literals
  const message = `Hello, ${name}!`;
  
  // Arrow functions
  const double = (x) => x * 2;
  array.map(item => item.id);
  ```

### Async/Await
- Prefer `async`/`await` over raw promises
- Handle errors with try/catch
- Example:
  ```javascript
  async function fetchUserData(userId) {
    try {
      const response = await fetch(`/api/users/${userId}`);
      const data = await response.json();
      return data;
    } catch (error) {
      console.error('Failed to fetch user:', error);
      throw error;
    }
  }
  ```

### Optional Chaining and Nullish Coalescing
```javascript
const value = obj?.deep?.nested?.property;
const result = value ?? 'default';
```

## React-Specific (if applicable)

### Component Style
- Use functional components with hooks
- Use TypeScript with React
- Example:
  ```tsx
  import React, { useState, useEffect } from 'react';
  
  interface Props {
    userId: string;
    onUpdate?: (user: User) => void;
  }
  
  export const UserProfile: React.FC<Props> = ({ userId, onUpdate }) => {
    const [user, setUser] = useState<User | null>(null);
    
    useEffect(() => {
      // fetch user data
    }, [userId]);
    
    return (
      <div className="user-profile">
        {user && <h1>{user.name}</h1>}
      </div>
    );
  };
  ```

### Hooks Best Practices
- Follow [Rules of Hooks](https://react.dev/warnings/invalid-hook-call-warning)
- Use custom hooks for reusable logic
- Memoize expensive calculations with `useMemo`
- Optimize re-renders with `useCallback`

### State Management
- [Your choice: Redux, Zustand, Context API, etc.]
- Keep state as close to where it's used as possible
- Lift state up only when necessary

## Testing

### Testing Framework
- **Test Runner**: [Jest/Vitest]
- **Testing Library**: [React Testing Library/Enzyme]
- **E2E**: [Playwright/Cypress]

### Test Structure
```javascript
import { render, screen, fireEvent } from '@testing-library/react';
import { UserProfile } from './UserProfile';

describe('UserProfile', () => {
  it('should render user name', () => {
    render(<UserProfile userId="123" />);
    expect(screen.getByText('John Doe')).toBeInTheDocument();
  });
  
  it('should call onUpdate when button clicked', () => {
    const handleUpdate = jest.fn();
    render(<UserProfile userId="123" onUpdate={handleUpdate} />);
    
    fireEvent.click(screen.getByRole('button', { name: 'Update' }));
    expect(handleUpdate).toHaveBeenCalled();
  });
});
```

### Coverage
- Maintain minimum [X]% code coverage
- Run: `npm test -- --coverage`

## Package Management

### Dependencies
```json
{
  "dependencies": {
    "react": "^18.2.0"
  },
  "devDependencies": {
    "typescript": "^5.0.0",
    "@types/react": "^18.0.0",
    "eslint": "^8.0.0",
    "prettier": "^3.0.0"
  }
}
```

### Scripts
```json
{
  "scripts": {
    "dev": "vite",
    "build": "tsc && vite build",
    "test": "vitest",
    "lint": "eslint src --ext .ts,.tsx",
    "format": "prettier --write 'src/**/*.{ts,tsx,json}'"
  }
}
```

## Error Handling

### Try-Catch for Async Operations
```javascript
async function handleSubmit(data) {
  try {
    await api.saveData(data);
    showSuccessMessage();
  } catch (error) {
    if (error instanceof ValidationError) {
      showValidationErrors(error.fields);
    } else {
      showErrorMessage('Something went wrong');
      console.error(error);
    }
  }
}
```

### Error Boundaries (React)
```tsx
class ErrorBoundary extends React.Component<Props, State> {
  static getDerivedStateFromError(error: Error) {
    return { hasError: true, error };
  }
  
  componentDidCatch(error: Error, errorInfo: React.ErrorInfo) {
    console.error('Error caught:', error, errorInfo);
  }
  
  render() {
    if (this.state.hasError) {
      return <ErrorFallback error={this.state.error} />;
    }
    return this.props.children;
  }
}
```

## API Integration

### Fetch Pattern
```javascript
const API_BASE = process.env.REACT_APP_API_BASE || '/api';

async function apiRequest(endpoint, options = {}) {
  const response = await fetch(`${API_BASE}${endpoint}`, {
    ...options,
    headers: {
      'Content-Type': 'application/json',
      ...options.headers,
    },
  });
  
  if (!response.ok) {
    throw new Error(`API error: ${response.status}`);
  }
  
  return response.json();
}
```

## Performance

### Best Practices
- Lazy load components and routes
- Optimize images and assets
- Use code splitting
- Implement virtual scrolling for long lists
- Debounce/throttle expensive operations
- Example:
  ```javascript
  import { lazy, Suspense } from 'react';
  
  const HeavyComponent = lazy(() => import('./HeavyComponent'));
  
  function App() {
    return (
      <Suspense fallback={<Loading />}>
        <HeavyComponent />
      </Suspense>
    );
  }
  ```

## Security

### Best Practices
- Sanitize user input to prevent XSS
- Use HTTPS for all API calls
- Store sensitive data in environment variables
- Implement CSRF protection
- Validate data on both client and server
- Use Content Security Policy (CSP)

### Environment Variables
```javascript
// .env
REACT_APP_API_KEY=your_api_key_here
REACT_APP_API_BASE=https://api.example.com

// Usage
const apiKey = process.env.REACT_APP_API_KEY;
```

## Build and Deployment

### Build Optimization
- Minify code in production
- Remove console logs in production
- Enable source maps for debugging
- Optimize bundle size

### Build Command
```bash
npm run build
# Output typically goes to `dist/` or `build/`
```

## Accessibility

### Guidelines
- Use semantic HTML
- Provide alt text for images
- Ensure keyboard navigation
- Use ARIA attributes when necessary
- Test with screen readers
- Maintain color contrast ratios

### Example
```tsx
<button
  aria-label="Close dialog"
  onClick={handleClose}
>
  <CloseIcon aria-hidden="true" />
</button>
```

## Linting and Formatting

### ESLint Configuration
```javascript
// .eslintrc.js
module.exports = {
  extends: [
    'eslint:recommended',
    'plugin:@typescript-eslint/recommended',
    'plugin:react/recommended',
    'plugin:react-hooks/recommended',
    'prettier'
  ],
  rules: {
    // Your custom rules
  }
};
```

### Prettier Configuration
```json
{
  "semi": true,
  "singleQuote": true,
  "tabWidth": 2,
  "trailingComma": "es5"
}
```

## Git Workflow

### Commit Messages
- Use conventional commits: `type(scope): message`
- Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`
- Example: `feat(auth): add login functionality`

## Documentation
- Keep README.md updated
- Document complex functions and components
- Provide usage examples
- Maintain a CHANGELOG.md
