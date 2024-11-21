# My personal Dotfiles Repository

This repository contains all of the configuration files that I use for several applications on MacOs and Linux environments.

## How it works?

Create sym links to the files in this directory anywhere on the system that the config files need to be placed.

## Installing the Config Files

I use this repository in combination with a tool called `stow` [GNU Stow](https://www.gnu.org/software/stow/) to keep all of my configuration files in one centralized location.

This tool assumes that the contents of this repo (when cloned) resembles what the output home directory should look like.

### To put files where they belong:

1. `git clone <this repository>` Clone the repo
2. `cd dotfiles` cd into the new directory 
3. `stow .` Run the stow tool on the contents

### Using "adopt"

You can run `stow . --adopt` to pull in the current existing configurations into the dotfiles directory.
