# Mac Terminal Color Changes

CLI for updating the macintosh terminal. Some ideas and code used from [this](https://scriptingosx.com/2019/12/random-terminal-background-colors/) article.

## CLI
### Synopsis
**color** [**-h**] [**-s**] [**-r**] [**-d**] [**-c**]

### Description
The following option are avalable:
**-h**, **--help**
        Retrieve the help menu.
**-s**, **--save**
        Save current terminal color.
**-r**, **--random**
        Get random terminal color from saved colors.
**-d**, **--delete**
        Deletes current terminal color from saved colors.
**-c**, **--clear**
        Clear saved terminal colors.

## Installation

1. `git clone https://github.com/shapiroj18/terminal-colors.git`
2. `cd terminal-colors`
3. `chmod +x setup && ./setup`
4. `cd ..`
5. `rm -rf terminal-colors`

This adds the `color` command to your path so that you can run any time you are in the terminal (restart terminal to use the command).

## Running Script Manually
1. `chmod +x color`
2. `./color`

## Notes
1. This has only works with Mac OS and ZSH