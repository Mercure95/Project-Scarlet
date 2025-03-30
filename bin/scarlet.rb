require_relative '../lib/scraper'
require_relative '../lib/email_checker'
require_relative '../lib/report_generator'

puts "Enter username :"
username = gets.chomp

twitter_profil(username)

puts "Enter email :"
email = gets.chomp

check_email_breach(email)
