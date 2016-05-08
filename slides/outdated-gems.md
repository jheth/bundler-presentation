##  Outdated Gems

#### We all have them.  You don't know which ones.

Running this command may result in sadness.

```bash
$ bundle outdated
```

```bash
Outdated gems included in the bundle:
* better_errors (newest 2.1.1, installed 2.0.0) in group "development"
* brakeman (newest 3.3.0, installed 2.6.2) in group "development"
* browser (newest 2.0.3, installed 0.8.0, requested ~> 0.8.0) in group "default"
* capybara (newest 2.7.1, installed 2.6.2) in group "test"
* dynamics_crm (newest 0.7.1 f9a9a4d, installed 0.7.1 e43c926) in group "default"
* google-api-client (newest 0.9.6 26d3e36, installed 0.8.1 0d0bba2) in group "default"
```

```bash
$ bundle update better_errors brakeman capybara
```

Note:
 Depending on the size of your Gemfile, this command can take a while.
