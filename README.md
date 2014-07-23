rspec TeamCity reporter
=======================

TeamCity has a built in rspec reporter, but it only works in certain scenarios.
I ran into a scenario where I needed to run spec on an EC2 machine and TeamCity
needed to know the results, so I created this for situations like that.

Installation
------------

Put the source code somewhere.

Usage
-----

```bash
rspec spec --require <absolute-path-to-source-code> --format Spec::Runner::Formatter::TeamcityFormatter
```
