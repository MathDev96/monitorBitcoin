require 'net/http'
require 'json'
require 'colorize'

class Bitcoin
  def initialize(url)
    @url = url
  end

  def actual_price(count)
    price_data = fetch_bitcoin_price
    usd = format_price(price_data['usd'])
    brl = format_price(price_data['brl'])

    puts "==============================".green
    puts "  MONITOR DE BITCOIN - v#{count}".yellow
    puts "==============================".green
    puts "💵 Dólar: ".light_blue + "$#{usd}".white
    puts "🇧🇷 Real:  ".light_blue + "R$#{brl}".white
    puts "⏰ Atualizado em: #{Time.now.strftime('%d/%m/%Y %H:%M:%S')}".gray
    puts "-" * 30
  end

  private

  def fetch_bitcoin_price
    uri = URI(@url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    data['market_data']['current_price'].slice('usd', 'brl')
  rescue StandardError => e
    puts "Erro ao buscar dados: #{e.message}".red
    {'usd' => 0.0, 'brl' => 0.0}
  end

  def format_price(price)
    whole, decimal = format('%.2f', price).split('.')
    whole_with_points = whole.reverse.scan(/\d{1,3}/).join('.').reverse
    "#{whole_with_points},#{decimal}"
  end
end

count = 1
loop do
  system(RUBY_PLATFORM.include?('win') ? 'cls' : 'clear') # limpa terminal
  Bitcoin.new('https://api.coingecko.com/api/v3/coins/bitcoin').actual_price(count)
  count += 1
  sleep 10
end
