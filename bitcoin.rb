require 'net/http'
require 'json'

class Bitcoin
  def initialize(url)
    @url = url
  end

  def actual_price(count)
    price_data = fetch_bitcoin_price
    usd = format_price(price_data['usd'])
    brl = format_price(price_data['brl'])

    puts "[#{count}] Preço atual do Bitcoin:"
    puts "- Dólar: $#{usd}"
    puts "- Real: R$#{brl}"
    puts "-" * 30
  end

  private

  def fetch_bitcoin_price
    uri = URI(@url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    data['market_data']['current_price'].slice('usd', 'brl')
  end

  def format_price(price)
    whole, decimal = format('%.2f', price).split('.')
    whole_with_points = whole.reverse.scan(/\d{1,3}/).join('.').reverse
    "#{whole_with_points},#{decimal}"
  end
end

count = 1
loop do
  Bitcoin.new('https://api.coingecko.com/api/v3/coins/bitcoin').actual_price(count)
  count += 1
  sleep 10
end
