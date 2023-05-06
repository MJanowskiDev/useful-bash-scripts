# Useful Bash Scripts

A collection of handy Bash scripts for developers to simplify tasks and improve productivity. The goal is to provide a useful toolkit that saves time and makes development tasks more efficient.
## List of Scripts

1. **kill_on.sh:** Terminates the process listening on a specified port (given as an argument).
## Usage

1. **Directly called:** Navigate to the script directory and run with `./script_name.sh`.
   
   **Note:** To use a script function, source the script (`source kill_on.sh`) in the current shell session.
   
2. **Creating Aliases (for script functions):** Create an alias in the shell configuration file.

   1. Clone the repository to a desired location.
   2. Open your shell configuration file (e.g., `~/.bashrc`, `~/.bash_profile`, or `~/.zshrc`).
   3. For each script function, create an alias: `alias function_name="source <path_to_cloned_repository>/script_name.sh; function_name"`
      - Example: `alias kill_on="source ~/code/useful-bash-scripts/kill_on.sh; kill_on"`
   4. Save the file and restart your terminal or run `source <your_shell_config_file>`.

Now you can call the aliased script function directly in the terminal, regardless of your current directory (e.g., `kill_on 3000`).

**Note:** Ensure the script has executable permissions using `chmod +x script_name.sh` for both directly called scripts and script functions.

## Contributing

Contribute by adding your own scripts or improving existing ones. Create a fork, make changes, and submit a pull request.

## License

Scripts are provided under the MIT License. See the [LICENSE](LICENSE) file for details.