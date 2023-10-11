#!/bin/bash

################################################################################
# Script Name    : git-commit.sh
# Description    : Bash script used to git commit changes to single files
# Args           : FILE COMMIT_MESSAGE
##############################################################################

set -o errexit
set -o pipefail
set -o nounset

function log_message() {
    local message="${1}"
    echo "${message}" 1>&2
}

function display_usage_and_exit() {
    log_message "ERROR: Missing or invalid arguments"
    log_message "Usage example: ${0} FILE COMMIT_MESSAGE"
    exit 1
}

function check_for_file_changes() {
    local file="${1}"
    local diff
    diff=$(git diff "${file}")

    if [[ -z "${diff}" ]]; then
        log_message "ERROR: No changes to commit"
        exit 1
    else
        log_message "INFO: The following changes have been made to the ${file} file:"
        log_message "${diff}"
    fi
}

function set_author_info_for_commit() {
    local author_name
    local author_email
    
    author_name=$(git log -1 --pretty=format:'%an')
    author_email=$(git log -1 --pretty=format:'%ae')

    log_message "INFO: Using as author: ${author_name} <${author_email}>"
    git config user.name "${author_name}"
    git config user.email "${author_email}"
}

function perform_git_commit() {
    local file="${1}"
    local commit_message="${2}"

    git add "${file}"
    git commit -m "${commit_message}"
}

function main() {
    if [[ "${#}" -ne 2 ]]; then
        display_usage_and_exit
    fi
    
    local file="${1}"
    local commit_message="${2}"

    check_for_file_changes "${file}"
    set_author_info_for_commit
    perform_git_commit "${file}" "${commit_message}"
}

main "${@}"
