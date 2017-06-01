require 'minitest/autorun'
require 'exchange_rates_ni'

class ExchangeRatesNiTest < Minitest::Test

  def test_bac
    rates = ExchangeRatesNi.new('USD')
    assert_match(/\d+/, rates.bac.sale.to_s, 'Invalid response')
  end

  def test_bcn_today
    rates = ExchangeRatesNi.new('USD')
    assert_match(/\d+/, rates.bcn.today.to_s, 'Invalid response')
  end

  def test_bcn_by_date
    rates = ExchangeRatesNi.new('USD')
    assert_match(/\d+/, rates.bcn.by_date(2017,3,1).to_s, 'Invalid response')
  end

  def test_bcn_by_month
    rates = ExchangeRatesNi.new('USD')
    assert_match(/\d+/, rates.bcn.by_month(2017,3).to_s, 'Invalid response')
  end

end
