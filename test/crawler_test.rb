require 'nokogiri'
require 'httparty'

def twitter_profile(username)
  url = "https://twitter.com/#{username}"
  response = HTTParty.get(url)
  document = Nokogiri::HTML(response.body)
  bio = document.at_css("meta[name='description']")['content'] # extrait la bio du profil
  puts "Bio de #{username}: #{bio}"
end
