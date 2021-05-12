# Preview all emails at http://localhost:3000/rails/mailers/manager_mailer
class ManagerMailerPreview < ActionMailer::Preview
	def email manager
		@manager = manager
		mail(to: manager.email, subject: 'Daily Overtime Request Email')
	end
end
