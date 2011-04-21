# notify_if_invalid

Record an exception in HopToad if your model object is invalid.

## Usage

```ruby
class User < ActiveRecord::Base
  notify_if_invalid

  # validations for the object
  validates_precense_of :name
end
```

## Installation

```ruby
# Bundler Gemfile
gem 'notify_if_invalid'
```

## Contributing

* Fork the project
* Fix the issue
* Add tests
* Send a pull request

see CONTRIBUTORS.txt for complete list of contributors.

## Copyright

Copyright (c) 2011 Socialcast Inc. 
See LICENSE.txt for details.
