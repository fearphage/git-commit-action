# Commit and push changes from an action

## Requirements

* `COMMIT_USER_NAME` - Name to use to commit files
* `COMMIT_USER_EMAIL` - Email address to use to commit files
* `COMMIT_MESSAGE` - commit message

## Optional

* `ADD_FILES` - If set to `true`, this will call `git add --all` before committing files. Note: This is
  only required to add new (untracked) files. Changes are automatically picked up by `git commit`.

## Usage

```terraform
action "commit changes" {
  uses = "fearphage/git-commit-action@master"
  secrets = ["GITHUB_TOKEN"]
  env = {
    COMMIT_USER_NAME = "Commit Name"
    COMMIT_USER_EMAIL = "commit-email@example.com"
    COMMIT_MESSAGE = "This is the commit message"

    # Optional
    ADD_FILES = "true"
  }
}
```
