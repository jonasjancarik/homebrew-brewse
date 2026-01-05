# Brewse Tap

Personal Homebrew tap for @jonasjancarik's projects.

## Deveolopment: Updating the Formula

When a new version is released on PyPI, update the formula using the provided script:

```bash
./update-formula.sh
```

You can also specify a specific version if needed:

```bash
./update-formula.sh 0.1.3
```

This will automatically:
- Download the tarball from PyPI
- Calculate the SHA256 hash
- Update the formula file
- Show you the diff
- Commit and push the changes (with confirmation)

## Users: Updating brewse

To update brewse to the latest version:

```bash
brew update
brew upgrade brewse
```

