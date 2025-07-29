# Translation System Guide

## Overview

The translation system has been updated to support nested JSON structures while maintaining backward compatibility with flat keys. This allows for better organization of translation keys and more maintainable locale files.

## JSON Structure

### Nested JSON Format (Recommended)

```json
{
  "common": {
    "next": "Next",
    "skip": "Skip",
    "loading": "Loading...",
    "save": "Save",
    "cancel": "Cancel"
  },
  "error": {
    "network": "Network error. Please check your internet connection.",
    "server": "Server error. Please try again later.",
    "timeout": "Request timeout. Please try again.",
    "unknown": "An unknown error occurred. Please try again."
  },
  "auth": {
    "login": "Login",
    "logout": "Logout",
    "register": "Register",
    "forgot_password": "Forgot Password"
  }
}
```

### Flat JSON Format (Still Supported)

```json
{
  "next": "Next",
  "skip": "Skip",
  "loading": "Loading...",
  "network_error": "Network error. Please check your internet connection."
}
```

## Usage

### Basic Usage

```dart
import 'package:flutter/material.dart';
import 'package:vitech_blockchain/core/utils/translate.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final translate = Translate.of(context);
    
    return Column(
      children: [
        // Using full method name
        Text(translate.translate('common.next')),
        
        // Using shorter method
        Text(translate.t('common.skip')),
        
        // Error messages
        Text(translate.t('error.network')),
        
        // Buttons
        ElevatedButton(
          onPressed: () {},
          child: Text(translate.t('auth.login')),
        ),
      ],
    );
  }
}
```

### Key Access Patterns

With nested JSON, you can access translations using dot notation:

- `common.next` → "Next"
- `common.loading` → "Loading..."
- `error.network` → "Network error. Please check your internet connection."
- `auth.login` → "Login"

### Fallback Behavior

- If a key is not found, the key itself is returned
- If a null or empty key is provided, an empty string is returned
- This ensures your app won't crash due to missing translations

## File Structure

Locale files should be placed in:
```
assets/locale/
├── en.json
├── vi.json
├── ar.json
└── ...
```

## Best Practices

### 1. Organize by Feature/Context

```json
{
  "auth": {
    "login": "Login",
    "register": "Register",
    "forgot_password": "Forgot Password"
  },
  "profile": {
    "edit": "Edit Profile",
    "save": "Save Changes",
    "avatar": "Profile Picture"
  },
  "wallet": {
    "balance": "Balance",
    "send": "Send",
    "receive": "Receive"
  }
}
```

### 2. Use Consistent Naming

- Use snake_case for keys: `forgot_password`, `network_error`
- Group related translations: `auth.*`, `error.*`, `common.*`
- Keep keys descriptive but concise

### 3. Handle Pluralization

```json
{
  "messages": {
    "one": "You have 1 message",
    "other": "You have {{count}} messages"
  }
}
```

### 4. Include Context

```json
{
  "button": {
    "save": "Save",
    "cancel": "Cancel",
    "delete": "Delete"
  },
  "label": {
    "name": "Name",
    "email": "Email",
    "password": "Password"
  }
}
```

## Migration from Flat Structure

If you have existing flat JSON files, you can gradually migrate:

1. **Keep existing flat keys working** - The system supports both formats
2. **Add new keys in nested format** - Start organizing new translations
3. **Gradually refactor** - Move flat keys to nested structure over time

Example migration:
```json
{
  // Old flat keys (still work)
  "login": "Login",
  "register": "Register",
  
  // New nested structure
  "auth": {
    "forgot_password": "Forgot Password",
    "reset_password": "Reset Password"
  }
}
```

## Testing

The translation system includes proper error handling and fallbacks. Test your translations by:

1. Checking that all keys exist in all locale files
2. Testing with missing keys (should return the key itself)
3. Testing with null/empty keys (should return empty string)

## Performance

The flattening process happens once during app initialization, so there's no performance impact during runtime translation lookups.
