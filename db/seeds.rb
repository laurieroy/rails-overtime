@employee = Employee.create(email: "test@test.com", 
										password: "password",
										password_confirmation: "password",
										first_name: "test", 
										last_name: "tester",
										phone: "9713195769",
										ssn: 1234,
										company: "ABC company")
puts "1 user created"

AdminUser.create(email: "laurieroy.dev@gmail.com", 
								password: "password",
								password_confirmation: "password", 
								first_name: "Laurie", 
								last_name: "Roy",
								phone: "9713195769",
								ssn: 1234,
								company: "ABC company")
puts "1 admin user created"

AuditLog.create(
	user_id: @employee.id,
	status: 0,
	start_date: (Date.today - 6.days)
	)
AuditLog.create(
	user_id: @employee.id,
	status: 0,
	start_date: (Date.today - 13.days)
	)

AuditLog.create(
	user_id: @employee.id,
	status: 0,
	start_date: (Date.today - 20.days)
	)

puts "3 audit_logs have been created"

100.times do |post|
	Post.create(date: Date.today, 
							rationale: "#{post} Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
							user_id: @employee.id, 
							overtime_request: 2.0)
end

puts "100 posts have been created"
