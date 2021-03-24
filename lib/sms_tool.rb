module SmsTool
	require 'twilio-ruby'
	account_sid = Rails.application.credentials.twilio[:account_sid]
	auth_token = Rails.application.credentials.twilio[:auth_token]
	twilio_phone = Rails.application.credentials.twilio[:phone_number]

	@client = Twilio::REST::Client.new(account_sid, auth_token)

	def self.send_sms(number:, message:)
		@client.messages.create(
			from: twilio_phone,
			# to: "+19713195769",
			to: "+1#{number}",
			body: "#{message}"
		)
	end
end
