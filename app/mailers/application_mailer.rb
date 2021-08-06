class ApplicationMailer < ActionMailer::Base
  default from: Rails.applicaton.credentials.dig(:sendgrid, :email_addy)
  layout 'mailer'
end
