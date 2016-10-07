# Duck Duck Go Wrapper

A simple Ruby Library wrapper around Duck Duck Go Instant Search [API](https://duckduckgo.com/api)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ddg-wrapper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ddg-wrapper

## Usage
To use Duck Duck Go Wrapper the most simple approach is to initialize and pass it a query.
```ruby
> client = DDG::Wrapper::Client.new
> data = client.query('your_query_string')
```
The above will return a hash results containing the urls, logo, and page titles

If you would like to specify parameters the you could also do the following.
```ruby
> client = DDG::Wrapper::Client.new
> params = client.build_params(query, format, pretty)
> data = client.get_data(params)
```
See Duck Duck Go Instant Search [API](https://duckduckgo.com/api) for more information on accepted parameters

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ddg-wrapper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

