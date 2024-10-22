# Aider Pack

Welcome to the Aider Pack, a tool designed to streamline the management of configuration packs for the Aider application. This script allows you to create, edit, delete, and execute configuration packs with ease.

## Features

- **Pack Management**: Create, edit, and delete configuration packs.
- **Model Selection**: Choose from a predefined list of models for your packs.
- **Environment Variables**: Manage environment variables specific to each pack.
- **Additional Arguments**: Include additional arguments for the Aider command in each pack.
- **Interactive Menu**: User-friendly interface for managing packs.

## What is a Pack?

A "pack" is a concept introduced by this tool. It allows you to organize and manage multiple configurations (such as models, weak models, editor models, environment variables, and additional arguments) under a single name. This makes it easier to switch between different sets of settings without having to manually specify each option every time.

## Installation

To get started with the Aider Pack, follow these steps:

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/lucacri/aider-pack.git
   cd aider-pack
   ```

2. **Make the Script Executable**:

   ```bash
   chmod +x aider-pack
   ```

3. **Copy the Executable**:

   For **macOS**:

   ```bash
   sudo cp aider-pack /usr/local/bin/
   ```

   For **Linux**:

   ```bash
   sudo cp aider-pack /usr/local/bin/
   ```

   Note: This makes the `aider-pack` command available system-wide. You may need to enter your password.

4. **(Optional) Install Shell Completion**:
   To enable shell completion, follow these steps:

   For **Bash**:
   1. Add the following line to your ~/.bashrc file:
      eval "$(aider-pack --completions bash)"
   2. Restart your shell or run:
      source ~/.bashrc

   For **Zsh**:
   1. Add the following line to your ~/.zshrc file:
      eval "$(aider-pack --completions zsh)"
   2. Restart your shell or run:
      source ~/.zshrc

## Usage

Run the script without arguments to start in interactive mode:

```bash
./aider-pack
```

To execute a specific pack with additional options:

```bash
./aider-pack <pack_name> [additional aider options]
```

## Configuration

The script uses a JSON file located at `~/.aider-pack.json` to store pack configurations. This file is automatically managed by the script.

You can customize the list of available models by setting the environment variable `AIDER_PACK_MODELS`.

## Contributing

Contributions are welcome! Please see the `CONTRIBUTING.md` file for more information.

## License

This project is licensed under the terms of the MIT license. See the `LICENSE` file for details.

## Author

Created by [Luca Critelli](https://github.com/lucacri).

---

Feel free to reach out with any questions or suggestions!
