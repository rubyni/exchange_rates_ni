require 'savon'
require_relative 'currency'

# bank: Banco Central de Nicaragua
# web: http://www.bcn.gob.ni/

class Bcn
  # currency: USD
  def initialize(currency)
    @currency = currency
    url = 'https://servicios.bcn.gob.ni/Tc_Servicio/ServicioTC.asmx?WSDL'
    @client = Savon.client wsdl: url, convert_request_keys_to: :camelcase
  end

  # today
  def today
    request = @client.call(:recupera_tc_dia, message: {
        Ano: Time.now.year,
        Mes: Time.now.month,
        Dia: Time.now.day
    })

    request.body[:recupera_tc_dia_response][:recupera_tc_dia_result]
  end

  # by_date
  # param: year
  # param: month
  # param: day
  def by_date(year, month, day)
    request = @client.call(:recupera_tc_dia, message: {
        Ano: year,
        Mes: month,
        Dia: day
    })

    request.body[:recupera_tc_dia_response][:recupera_tc_dia_result]
  end



  # by_month
  # param: year
  # param: month
  def by_month(year, month)
    request = @client.call(:recupera_tc_mes, message: {
        Ano: year,
        Mes: month
    })

    response = request.body[:recupera_tc_mes_response][:recupera_tc_mes_result][:detalle_tc][:tc]
    puts response.to_json
    response
  end
end
