# Lionshare

A Ruby interface to the [Lionshare](https://github.com/lionsharecapital/lionshare-api) API.

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

### Prices

```ruby
client.prices.get
```

Response:

```ruby
{"data"=>{"BTC"=>[1755, 1780.32, 1794.99, 1781.91, 1777.96, 1782, 1794.99, 1785.54, 1795.52, 1843, 1877.6, 1880.91, 1848.77], "ETH"=>[91.27, 88.59, 89.34, 89.28, 88.77, 87.28, 88.36, 89.08, 88.41, 87.16, 88.2, 89.7, 90.33], "LTC"=>[37.1, 36.16, 34.31, 31.72, 32.41, 33.55, 32.82, 32.21, 29.92, 31.71, 31.2, 32.27, 32.79]}}
```


or with `period` key
`hour | day | week | month | year`

```ruby
client.prices.get(period: :hour)
```
Response:

```ruby
{"data"=>{"BTC"=>[1852, 1851.98, 1851.39, 1851.96, 1851.88, 1851.96, 1852.95, 1853, 1852.96, 1852.95, 1853, 1852.99, 1853], "ETH"=>[89.75, 89.4, 89.59, 89.58, 89.54, 89.52, 89.48, 89.39, 89.46, 89.39, 89.21, 89.18, 88.9], "LTC"=>[31.82, 31.9, 31.94, 31.92, 31.94, 31.87, 31.96, 31.81, 31.66, 31.45, 31.64, 31.73, 31.63]}}
```

Response:

### Markets

```ruby
client.markets.get(period: :hour)
```

Response:

```ruby
{"data"=>{"BTC"=>28317131524, "ETH"=>8372895792, "XRP"=>6477081639, "LTC"=>1562510222, "XEM"=>1104930000, "DASH"=>704585094, "ETC"=>606619545, "XMR"=>417501622}}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kirillshevch/lionshare.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

