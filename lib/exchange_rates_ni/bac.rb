require 'rest-client'
require 'json'
require 'currency'

# bank: Bac Credomatic
# web: https://www.baccredomatic.com/en

class Bac
  # currency: USD|EUR
  def initialize(currency)
    @currency = currency
    url = 'https://www.baccredomatic.com/en/bac/exchange-rate-ajax/es-ni'
    @json = JSON.parse RestClient.get url
  end

  # buy
  def buy
    case @currency
      when Currency.usd
        response = @json['buyRateUSD']
      when Currency.eur
        response = @json['buyRateEUR']
      else
        response = @json['buyRateUSD']
    end

    response
  end

  # sale
  def sale
    case @currency
      when Currency.usd
        response = @json['saleRateUSD']
      when Currency.eur
        response = @json['saleRateEUR']
      else
        response = @json['saleRateUSD']
    end

    response
  end
end