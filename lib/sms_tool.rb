module SmsTool
	require 'twilio-ruby'
	account_sid = Rails.application.credentials.twilio[:account_sid]
	auth_token = Rails.application.credentials.twilio[:auth_token]

	@client = Twilio::REST::Client.new(account_sid, auth_token)

	def self.send_sms(number:, message:)
		@client.messages.create(
			from: '+18588793452',
			# from: Rails.application.credentials.twilio[:phone_number],
			# I stored my # w/+1, so have to add back in for to #
		
			# to: "+19713195769",
			to: "+1#{number}",
			body: "#{message}"
		)
	end
end
