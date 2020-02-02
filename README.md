# Ballerina Bash Completion Script
This is a command auto completion bash script for the Ballerina language. 

## Installation
To use this script, simply source the script.
```
$ source ballerina-completion.bash
```
Or add the above sourcing line to your `.bashrc` file.

To enable completions for all users, copy the completion script to the `/etc/bash_completion.d/` directory.

## Demo
- Getting a list of possible commands
[](demo/all-cmds.gif)

[](demo/cmd-completion.gif)

- Trying to run a standalone `.bal` file or a `.jar` file
[](demo/run-single-file.gif)

- Running a module
[](demo/run-module.gif)

- Building a single file
[](demo/build-single-file.gif)

- Building a module
[](demo/build-module.gif)
