# Homebrew Formula

## How do I install these formulae?
`brew tap servicex-sh/tap` then `brew install --no-quarantine servicex-sh/tap/httpx`

```
brew install https://raw.githubusercontent.com/servicex-sh/homebrew-tap/master/Formula/httpx.rb
```

If you are using macOS Catalina or later you may need to remove the quarantine attribute from the bits before you can use the httpx binaries. To do this, run the following:

```
$ sudo xattr -r -d com.apple.quarantine path/to/httpx/folder/
```

## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
