# File & Code Generation Rules

## General Rules

1. **No Duplicate Files**
   - Never create duplicate test files with the same name across different folders.
   - Before generating any new file (Bloc, Event, State, UseCase, Test, Mock), scan the project to check if a file with the same name already exists.

2. **File Modification**
   - If a similar file exists, improve or extend the existing file instead of creating a duplicate.
   - Before deleting or modifying any file, verify that it is not referenced anywhere in the project.

3. **Generated Files**
   - Generated mock files (`*.mocks.dart`) are allowed but must:
     - Stay in the same folder as the original test file
     - Be ignored in Git using `.gitignore`
   - Always keep one canonical file per feature per scope (e.g., one Bloc test file in `test/features/{feature}/bloc`).

4. **File Naming and Organization**
   - Follow the project's existing naming conventions and folder structure.
   - Keep related files together in the same directory.
   - Use clear, descriptive names that reflect the file's purpose.

5. **Code Generation**
   - Always run `build_runner` after adding or modifying code generation annotations.
   - Document any custom code generation steps in the project's README.

6. **Version Control**
   - Do not commit generated files to version control unless absolutely necessary.
   - Document any exceptions to this rule in the project's README.

7. **Documentation**
   - Document any special considerations or requirements for file generation in the project's documentation.
   - Keep the documentation up-to-date with any changes to the file generation process.

## Best Practices

- **Consistency**: Maintain consistent file organization and naming conventions throughout the project.
- **Cleanup**: Regularly review and clean up unused or redundant files.
- **Documentation**: Document any non-standard file organization or generation patterns.
- **Automation**: Use scripts or tools to automate file generation and cleanup where possible.

## Example Structure

```
lib/
  features/
    auth/
      sign_in/
        data/
          repositories/
            sign_in_repository_impl.dart
        domain/
          entities/
            user_entity.dart
          repositories/
            sign_in_repository.dart
          use_cases/
            sign_in_use_case.dart
        presentation/
          bloc/
            sign_in_bloc.dart
            sign_in_event.dart
            sign_in_state.dart
test/
  unit/
    auth/
      sign_in/
        bloc/
          sign_in_bloc_test.dart
          sign_in_bloc_test.mocks.dart  # Generated mocks
```

## Git Ignore

Add the following patterns to your `.gitignore` file to exclude generated files:

```
# Generated files
*.mocks.dart
*.freezed.dart
*.g.dart
*.config.dart
```

## Enforcement

- These rules should be enforced through:
  - Code reviews
  - Pre-commit hooks
  - CI/CD pipeline checks
  - Linting rules
