# Developing hugo-theme-readable

## Adding your fork as an additional Git remote to a hugo-theme-readable Git submodule

The easiest way to test your changes is with an existing Hugo website that already uses this theme. You can use your own or checkout the [starter template](https://github.com/cjtheham/hugo-starter-readable).

The following steps show you how to add your fork as an additional Git remote to the checked out Git submodule.

This way you can work with the hugo-theme-readable code directly, rather than experimenting in your own 'layouts' directory and copying code pieces around.

```bash
# If you haven't done so: init and update the submodule. This will populate themes/readable.
git submodule init
git submodule update

cd themes/readable/

# Add your fork as the remote 'fork'.
git remote add fork git@github.com:<your-username>/hugo-theme-readable.git

# Create a new branch.
git checkout -b my-change

# Make your changes directly to files in themes/readable.

# Anytime you want to push, replace the default 'origin' with 'fork', e.g.
# push your work on 'my-change' as a new branch to your fork.
git push -u fork my-change
```
