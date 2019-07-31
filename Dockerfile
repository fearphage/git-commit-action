FROM alpine/git

LABEL "com.github.actions.name"="Automatically commit changed files"
LABEL "com.github.actions.description"="Auotmatically commits changed files and push changes back to remote."
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="orange"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
