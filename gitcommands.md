**Configuration:**

- `git config --global user.name "Your Name"`: Set your username.
- `git config --global user.email "youremail@example.com"`: Set your email address.
- `git config --global core.editor <editor>`: Set your preferred text editor.
- `git config --list`: List your Git configurations.

**Repository Initialization:**

- `git init`: Initialize a new Git repository.
- `git clone <repository-url>`: Clone a remote repository to your local machine.

**Basic Snapshotting:**

- `git add <file>`: Add a file to the staging area.
- `git add .`: Add all changes in the current directory to the staging area.
- `git commit -m "Commit message"`: Create a new commit with the staged changes.
- `git commit -a -m "Commit message"`: Add and commit all changes in a single command.
- `git status`: Check the status of your working directory and staging area.
- `git diff`: Show changes between the working directory and the staging area.
- `git log`: Display commit history.

**Branching and Merging:**

- `git branch`: List all branches in the repository.
- `git branch <branch-name>`: Create a new branch.
- `git checkout <branch-name>`: Switch to an existing branch.
- `git checkout -b <branch-name>`: Create a new branch and switch to it.
- `git merge <branch-name>`: Merge changes from a different branch into the current branch.
- `git rebase <branch-name>`: Reapply commits from the current branch onto a different branch.
- `git branch -d <branch-name>`: Delete a branch (only if merged).
- `git branch -D <branch-name>`: Force delete a branch, even if not merged.

**Remote Repositories:**

- `git remote add origin <repository-url>`: Add a remote repository.
- `git remote -v`: List remote repositories.
- `git pull`: Fetch changes from the remote repository and merge them into the current branch.
- `git push <remote-name> <branch-name>`: Push changes to a remote repository.
- `git fetch`: Fetch changes from the remote repository without merging them.

**Collaboration:**

- `git clone <repository-url>`: Clone a remote repository to your local machine.
- `git fetch`: Download changes from a remote repository without merging.
- `git pull`: Fetch changes from the remote repository and merge them into the current branch.
- `git push <remote-name> <branch-name>`: Push changes to a remote repository.
- `git branch -u <remote-name>/<branch-name>`: Start tracking a remote branch.
- `git diff <commit1> <commit2>`: Show differences between two commits.

**Undoing Changes:**

- `git checkout -- <file>`: Discard changes in a specific file.
- `git reset HEAD <file>`: Unstage a file.
- `git reset --hard`: Discard all changes and reset to the previous commit.
- `git revert <commit>`: Create a new commit that undoes the changes introduced by a previous commit.

**Tagging:**

- `git tag`: List all tags in the repository.
- `git tag <tag-name>`: Create a new lightweight tag.
- `git tag -a <tag-name> -m "Tag message"`: Create a new annotated tag with a message.
- `git show <tag-name>`: Display information about a specific tag.
- `git push --tags`: Push tags to a remote repository.

Certainly! Here are some more Git commands:

**Stashing:**

- `git stash`: Save changes temporarily and revert the working directory to the last commit.
- `git stash save "message"`: Save changes with a custom message.
- `git stash list`: List all stashes.
- `git stash apply`: Apply the most recent stash.
- `git stash apply stash@{n}`: Apply a specific stash.
- `git stash drop`: Remove the most recent stash.
- `git stash drop stash@{n}`: Remove a specific stash.

**Working with Submodules:**

- `git submodule add <repository-url> <path>`: Add a submodule to the repository.
- `git submodule init`: Initialize submodules defined in the repository.
- `git submodule update`: Update submodules to the latest commits.
- `git submodule foreach <command>`: Execute a command in each submodule.

**Gitignore:**

- `.gitignore`: Create or modify the Gitignore file to specify files and patterns to ignore.

**Git Log:**

- `git log`: View commit history.
- `git log --oneline`: View commit history in a condensed format.
- `git log --author="author-name"`: View commit history by a specific author.
- `git log --grep="search-string"`: Search commit messages for a specific string.

**Git Reflog:**

- `git reflog`: View a detailed log of all Git actions, including commits, branch manipulations, etc.

**Git Bisect:**

- `git bisect start`: Start a binary search to find the commit that introduced a bug.
- `git bisect good <commit>`: Mark a commit as good (doesn't have the bug).
- `git bisect bad <commit>`: Mark a commit as bad (contains the bug).
- `git bisect reset`: Finish the bisect process and return to the original state.

These additional commands provide further functionality for specific use cases in Git. Remember to refer to the Git documentation or use `git help <command>` for detailed information on each command.
