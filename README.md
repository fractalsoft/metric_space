# MetricSpace
[![Build Status](https://travis-ci.org/fractalsoft/metric_space.png)](https://travis-ci.org/fractalsoft/metric_space)
[![Coverage Status](https://coveralls.io/repos/fractalsoft/metric_space/badge.png)](https://coveralls.io/r/fractalsoft/metric_space)

Count distance between points in selected metric space

## Installation

Add this line to your application's Gemfile:

    gem 'metric_space'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install metric_space

## Usage

```ruby
point1 = {x: 1.0, y: 2.0, z: 3.0}
point2 = {x: 2.5, y: -1.0}

MetricSpace::BritishRails.distance(point1, point2)
MetricSpace::Euclidean.distance(point1, point2)
MetricSpace::Maximum.distance(point1, point2)
MetricSpace::Taxicab.distance(point1, point2)
```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
