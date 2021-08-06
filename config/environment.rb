# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
	address: 'smtp.sendgrid.net', 
	port: '587', 
	authentication: plain, 
	user_name: Rails.applicaton.credentials.dig(:sendgrid, :username), 
	password: Rails.applicaton.credentials.dig(:sendgrid, :password), 
	domain:'laurie-overtime.herokuapp.com', 
	:enable_starttls_auto => true 
}
