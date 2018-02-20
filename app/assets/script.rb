require 'uri'
require 'json'
require 'net/http'

uri = URI('http://nn.rbc.ru/ajax/indicators?_=1509123601971')
response = JSON.parse(Net::HTTP.get(uri))
dollar_rate = response["currency"][0]["value1"]
Rate.first.update(value: dollar_rate)
puts dollar_rate
