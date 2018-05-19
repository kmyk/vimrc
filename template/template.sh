#!/bin/bash
set -o noclobber  # -C: Don't overwrite existing files with ">".
set -o errexit    # -e: If not interactive, exit immediately if any untested command fails.
set -o nounset    # -u: Write a message to standard error when attempting to expand a variable that is not set, and if the shell is not interactive, exit immediately.
