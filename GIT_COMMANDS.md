# Git Commands and Workflow Notes

These notes explain the main commands from the Git practice exercise.

## Create and inspect a repository

- `git init` starts Git tracking in the current folder.
- `git status` shows changed and staged files.
- `git add README.md` stages a file.
- `git commit -m "Add README"` saves a snapshot.
- `git log --oneline` shows the commit history.

## Work with branches

- `git branch feature-install` creates a branch.
- `git switch feature-install` moves to that branch.
- `git switch main` returns to the main branch.
- `git merge feature-install` combines the feature branch into main.
- `git branch -d feature-install` removes a merged local branch.

## Share the project

- `git remote add origin URL` connects a local repository to a remote.
- `git push -u origin main` uploads the main branch.
- `git clone URL` downloads a remote repository and its history.

## What I learned

A commit records a small change, while a branch lets me develop a feature separately. Merging brings the completed work back into main. Useful commit messages and checking `git status` make changes easier to follow.

For the original local Part 11 exercise I practiced the workflow. On GitHub, the first upload included the files together, so that earlier local history is not available there. A later branch and merge are visible in [pull request #1](https://github.com/b00827504-basak/bash-installer/pull/1).

The separate `REFLECTIONS.md` file answers the seven reflection questions.
