##  bundle config

#### How does it know?!

```bash
$ bundle config
# cat ~/.bundle/config
# cat .bundle/config
```

```bash
$ bundle config --local NAME VALUE
$ bundle config --global NAME VALUE
$ bundle config --delete NAME
```

```bash
# Change the install path for bundled gems
$ bundle config path "vendor/bundle"
# Get the install path
$ bundle config path

$ bundle config --without production
$ bundle config --bin true
```
