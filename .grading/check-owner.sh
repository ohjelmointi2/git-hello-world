#!/bin/sh

if ! owner_type=$(gh api "repos/$GITHUB_REPOSITORY" --jq '.owner.type'); then
    echo "Could not check the repository owner. Please ensure that the GitHub CLI is installed and authenticated."
    echo "In the grading environment, the GitHub CLI is pre-installed and authenticated. If you are running this"
    echo "script locally, please follow the instructions to install and authenticate the GitHub CLI:"
    echo "https://cli.github.com/"
    exit 1
fi

case "$owner_type" in
    Organization)
        echo "The repository is owned by an organization."
        ;;
    User)
        echo "Warning: This repository is owned by a personal account."
        echo "The exercise should be completed in the course organization"
        echo "so that the instructors can access it and see your results."
        echo "Please check the course instructions or contact the instructor."
        exit 1
        ;;
    *)
        echo "Could not determine the repository owner type: $owner_type"
        exit 1
        ;;
esac
