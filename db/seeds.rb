@user = User.create(email: "test@test.com", 
										password: "password",
										password_confirmation: "password",
										first_name: "test", 
										last_name: "tester",
										phone: "9713195769")
puts "1 user created"

AdminUser.create(email: "laurieroy.dev@gmail.com", 
								password: "password",
								password_confirmation: "password", 
								first_name: "Laurie", 
								last_name: "Roy",
								phone: "9713195769" )
puts "1 admin user created"

100.times do |post|
	Post.create(date: Date.today, 
							rationale: "#{post} rationale content", 
							user_id: @user.id, 
							overtime_request: 2.0)
end

puts "100 posts have been created"
