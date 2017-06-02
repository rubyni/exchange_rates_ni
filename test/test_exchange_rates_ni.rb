require 'minitest/autorun'
require 'exchange_rates_ni'

class ExchangeRatesNiTest < Minitest::Test



  def test_bcn_today
    rates = ExchangeRatesNi.new('USD')
    puts rates.bcn.today.to_s
    assert_match(/\d+/, rates.bcn.today.to_s, 'Invalid response')
  end


end
