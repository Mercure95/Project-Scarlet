require 'hibp'

def check_email_breach(email)
  breaches = Hibp.breached_account(email)
  if breaches.empty?
    puts "#{email} had no breaches"
  else
    puts "#{email} a été compromis dans les fuites suivantes :"
    breaches.each { |breach| puts breach['Name'] }
  end
end
