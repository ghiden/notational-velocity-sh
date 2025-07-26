# Notational Velocity in Shell

This script provides a simple command-line interface for managing notes, inspired by originally [Notational Velocity](https://notational.net/), and later [nvalt](https://brettterpstra.com/projects/nvalt/).

Both apps are not in development anymore, so I sometimes search for alternatives. Then I found this vim extension [notational-fzf-vim](https://github.com/alok/notational-fzf-vim) but it wasn't quite right from how I wanted.
As part of my trial, I found this [issue]()https://github.com/alok/notational-fzf-vim/issues/22) in the project which was nearly almost perfect for my needs.

So this project is just a shell script that I adjusted to fit my needs.

## Features

- Fuzzy search for note filenames.
- Content-based search for notes.
- Create new notes with a specified query.
- Open notes in your preferred Vi-based editor.

## Prerequisites

- [skim](https://github.com/skim-rs/skim): base UI and/or for fuzzy finder
- [fzf](https://github.com/junegunn/fzf): fuzzy finder
- [fzf.vim](https://github.com/junegunn/fzf.vim): preview
- [ripgrep](https://github.com/BurntSushi/ripgrep): content search

## Installation

1.  **Clone the repository or download the script.**

    ```bash
    git clone https://github.com/your-username/notational-velocity-sh.git
    cd notational-velocity-sh
    ```

2.  **Make the script executable.**

    ```bash
    chmod +x nvalt.sh
    ```

3.  **Customize the script.**

    Open `nvalt.sh` in your editor and set the `NVALT_DIR` variable to the directory where you want to store your notes. You can also change the `EDITOR` variable to your preferred vi text editor.

    ```bash
    # config
    NVALT_DIR="YOUR_NVALT_DIR"
    EDITOR="nvim"
    # FUZZY can be 'fzf' or 'skim'
    FUZZY="fzf"
    ```

4.  **Place the script in your `PATH`.**

    Move the `nvalt.sh` script to a directory in your system's `PATH` (e.g., `/usr/local/bin`) to make it accessible from anywhere in the terminal.

    ```bash
    sudo mv nvalt.sh /usr/local/bin/nvalt
    ```

## Usage

To use the script, run the following command in your terminal:

```bash
nvalt
```

This will open an interactive fuzzy search interface powered by `skim`.

### Searching for Notes

The script runs both fuzzy and content search at the same time:

### Key Bindings

-   **Enter**: Open the selected note in your configured editor (`$EDITOR`).
-   **Ctrl-N**: Create a new note with the current query as the filename. The new note will be created in your notes directory and opened in your editor.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

