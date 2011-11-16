module ApplicationHelper

	def hora_agora

	uri = 'http://developer.yahooapis.com/TimeService/V1/getTime'
	resposta = Restfulie.at(uri).get(:appid => 'YahooDemo')
	yahoo_time = resposta['Result']['Timestamp'].to_i
	Time.at(yahoo_time).strftime("%d%m%Y %H:%M")

	end
end
