# PyCharm

[![Build Status](https://travis-ci.org/boxen/puppet-pycharm.png?branch=master)](https://travis-ci.org/boxen/puppet-pycharm)

## Usage

```puppet
class { 'pycharm':
  edition => 'community',
  version => '3.1.1'
}

class { 'pycharm':
  edition => 'professional',
  version => '3.1.1'
}
```

## Required Puppet Modules

* `boxen`
