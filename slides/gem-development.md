##  Gem Development

```bash
$ bundle exec rake -T
rake build            # Build indyrb-0.1.0.gem into the pkg directory
rake clean            # Remove any temporary products
rake clobber          # Remove any generated files
rake install          # Build and install indyrb-0.1.0.gem into system gems
rake install:local    # Build and install indyrb-0.1.0.gem into system gems without network access
rake release[remote]  # Create tag v0.1.0 and build and push indyrb-0.1.0.gem to Rubygems
rake spec             # Run RSpec code examples
```
