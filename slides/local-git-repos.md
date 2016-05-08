##  Local Git Repos

```ruby
# Gemfile with Remote Repo
gem 'kami', github: 'jheth/kami', branch: 'master'
```

```bash
# Option 1 - Edit Gemfile
gem 'kami', path: '/path/to/local/git/repo'

# Option 2 - config
$ bundle config local.GEM_NAME /path/to/local/git/repository
```

In order to use my local repository, I would call:

```bash
$ bundle config local.kami ~/kami && bundle
```

Remove the local override

```bash
$ bundle config --delete local.kami && bundle
```

Note:
  Bundler also allows you to work against a git repository locally instead of using the remote version. This can be achieved by setting up a local override:

  Now instead of checking out the remote git repository, the local override will be used. Similar to a path source, every time the local git repository change, changes will be automatically picked up by Bundler. This means a commit in the local git repo will update the revision in the Gemfile.lock to the local git repo revision. This requires the same attention as git submodules. Before pushing to the remote, you need to ensure the local override was pushed, otherwise you may point to a commit that only exists in your local machine.


  Bundler does many checks to ensure a developer won't work with invalid references. Particularly, we force a developer to specify a branch in the Gemfile in order to use this feature. If the branch specified in the `Gemfile` and the current branch in the local git repository do not match, Bundler will abort. This ensures that a developer is always working against the correct branches, and prevents accidental locking to a different branch.

  Finally, Bundler also ensures that the current revision in the Gemfile.lock exists in the local git repository. By doing this, Bundler forces you to fetch the latest changes in the remotes.
