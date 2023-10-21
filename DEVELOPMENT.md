# Development Information and Instructions

## Getting Started

### Development Dependencies  

Install [Nix](https://nixos.org/).

### Building and Running the app (dev mode)

1. `nix-shell` to enter the Nix environment
2. `npm install && npm ci` to install our dependencies
3. `npx next build` to build the project
4. `npx next dev` to run the project using the default server

### Debugging the app

You can use Visual Studio Code or other tools to debug when developing locally. See the [next.js debugging configuration instructions](https://nextjs.org/docs/pages/building-your-application/configuring/debugging) for setup details.

### Running the linter locally

This repository uses github's Super Linter and we encourage running the linter
against your changes before making a pull request to dev or main.
You can run this locally using Docker using the supplied `super-linter.env` collection of environment variables
and your own:

1. Obtain the Super Linter Docker container:

`docker pull github/super-linter:latest`

2. Invoke Docker to run the Super Linter against your project directory with the included environment variables:

`docker run --env-file super-linter.env -v [path-to-project]:/tmp/lint github/super-linter`

Where `[path-to-project]` is the path to your project. This can be a full or relative path.

For example, if you're currently in the top level project-ricotta directory you can run the linter with the following

`docker run --env-file super-linter.env -v .:/tmp/lint github/super-linter`

To narrow the files to lint, pass the file(s) to run as a regular expression in the environment variable
`FILTER_REGEX_INCLUDE`. To exclude file(s) pass an appropriate addition to the
regular expression in the FILTER_REGEX_EXCLUDE environment variable entry in the `super-linter.env` file
or supply the regular expression for the files you wish to include on the command-line with the `-e` flag.

For example, to only lint the file DEVELOPMENT.md in the top level directory:

`docker run --env-file super-linter.env -e FILTER_REGEX_INCLUDE=DEVELOPMENT.md -v .:/tmp/lint github/super-linter`

Use UNIX-style paths with forward-slash \/ characters as path separators.
See the [super-linter GitHub repository](https://github.com/github/super-linter/blob/main/README.md#filter-linted-files)
for more information on how to specify files for super-linter runs.

## Architecture

Software Stack:
- next.js
- React
- TypeScript
- JavaScript
- Nix
