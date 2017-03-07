require 'minitest/autorun'
require 'exchange_rates_ni'

class ExchangeRatesNiTest < Minitest::Test

  def test_bac
    rates = ExchangeRatesNi.new('USD')
    assert_match(/\d+/, rates.bac.sale.to_s, 'Invalid response')
  end

end