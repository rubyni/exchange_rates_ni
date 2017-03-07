require_relative 'exchange_rates_ni/bac'

class ExchangeRatesNi
  # currency: USD|EUR
  def initialize(currency)
    @currency = currency
  end

  # set new currency
  def set_currency(currency)
    @currency = currency
  end

  # @bank: Bac
  def bac
    Bac.new(@currency)
  end
end