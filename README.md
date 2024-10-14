# Aider Pack Manager

Welcome to the Aider Pack Manager, a tool designed to streamline the management of configuration packs for the Aider application. This script allows you to create, edit, delete, and execute configuration packs with ease.

## Features

- **Pack Management**: Create, edit, and delete configuration packs.
- **Model Selection**: Choose from a predefined list of models for your packs.
- **Environment Variables**: Manage environment variables specific to each pack.
- **Interactive Menu**: User-friendly interface for managing packs.

## Installation

To get started with the Aider Pack Manager, follow these steps:

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/lucacri/aider-pack.git
   cd aider-pack
   ```

2. **Make the Script Executable**:

   ```bash
   chmod +x aider-pack
   ```

3. **(Optional) Install Shell Completion**:
   - For **Bash**:
     - **Linux**:

       ```bash
       sudo cp aider-pack-completion.bash /etc/bash_completion.d/aider-pack
       source /etc/bash_completion.d/aider-pack
       ```

     - **macOS**:

       ```bash
       mkdir -p ~/.bash_completion.d
       cp aider-pack-completion.bash ~/.bash_completion.d/aider-pack
       echo "if [ -f ~/.bash_completion.d/aider-pack ]; then" >> ~/.bash_profile
       echo "  . ~/.bash_completion.d/aider-pack" >> ~/.bash_profile
       echo "fi" >> ~/.bash_profile
       source ~/.bash_profile
       ```

   - For **Zsh**:
     - **Linux**:

       ```bash
       sudo cp aider-pack-completion.bash /usr/local/share/zsh/site-functions/_aider-pack
       echo "autoload -U compinit && compinit" >> ~/.zshrc
       source ~/.zshrc
       ```

     - **macOS**:

       ```bash
       mkdir -p ~/.zsh/completion
       cp aider-pack-completion.bash ~/.zsh/completion/_aider-pack
       echo "fpath=(~/.zsh/completion $fpath)" >> ~/.zshrc
       echo "autoload -U compinit && compinit" >> ~/.zshrc
       source ~/.zshrc
       ```

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

## Contributing

Contributions are welcome! Please see the `CONTRIBUTING.md` file for more information.

## License

This project is licensed under the terms of the MIT license. See the `LICENSE` file for details.

## Author

Created by [Luca Critelli](https://github.com/lucacri).

---

Feel free to reach out with any questions or suggestions!