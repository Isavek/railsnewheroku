# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :authentication => :plain,
  :address => "app.mailgun.com",
  :port => 587,
  :domain => "bike-world.herokuapp.com",
  :user_name => "postmaster@MYDOMAIN.mailgun.com",
  :password => "MYPASSWORD"
}
