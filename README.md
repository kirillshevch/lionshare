# Lionshare

A Ruby interface to the Lionshare API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lionshare'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lionshare

## Usage

Initialize client:

```ruby
client = Lionshare::Client.new
```

### prices

```ruby
client.prices.get
```

or with `period` key
`hour | day | week | month | year`

```ruby
client.prices.get(period: :hour)
```

Response:

### markets

```ruby
client.markets.get(period: :hour)
```

Response:

```ruby
{"data"=>{"BTC"=>28317131524, "ETH"=>8372895792", "XRP"=>6477081639, "LTC"=>1562510222, "XEM"=>1104930000, "DASH"=>704585094, "ETC"=>606619545, "XMR"=>417501622}}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kirillweb/lionshare.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

