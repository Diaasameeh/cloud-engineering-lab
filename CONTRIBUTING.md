# Contributing

## Branches

- Never work directly on `main`. Other engineers deploy from it.
- Feature work: `feature/PLAT-<ticket>-<short-description>`  e.g. `feature/PLAT-012-cpu-check`
- Urgent production fixes: `hotfix/PLAT-<ticket>-<short-description>`
- Undoing a change: `revert/PLAT-<ticket>-<short-description>`
- Lower case, words separated by hyphens.

## Commit messages

- Start with the ticket id on ticket work: `PLAT-012: Add CPU usage check script`
- Imperative mood ("Add", "Fix", "Remove"), at least four words.
- One logical change per commit. "update", "wip" and "changes" are not messages.

## History

- `main` is shared. Never rewrite it (no reset, no force push).
- A bad change on `main` is undone with a revert, through a pull request.

## Pull requests

- Every change reaches `main` through a pull request (once branch protection is on).
- Fill in every section of the pull request template.
- Address review comments by pushing to the same branch, and reply to say what you changed.

## Never commit

- Secrets of any kind, including `*.auto.tfvars` files
- Terraform state (`*.tfstate`) or the `.terraform/` provider cache
- Editor and OS files (`.DS_Store`, `Thumbs.db`)
