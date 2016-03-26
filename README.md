
# Nmax
[![Build Status](https://travis-ci.org/Grandman/nmax.svg?branch=master)](https://travis-ci.org/Grandman/nmax)

Nmax allows you to collect N largest numbers from input stream

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nmax', git: 'git://github.com/Grandman/nmax.git'
```

And then execute:

    $ bundle

## Usage

```
cat sample_data_40GB.txt | nmax 10000
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

