FactoryBot.define do
	sequence :email do |n|
		"test#{n}@example.com"
	end
	factory :user do
		id {1}
		first_name { "Test" }
		last_name  { "Tester" }	
    email { generate :email }
		password {"password"}
		password_confirmation {"password"}
	end

	factory :admin_user, class: "AdminUser" do
		id {2}
		first_name { "Admin" }
		last_name  { "User" }
    email { generate :email }
		password {"password"}
		password_confirmation {"password"}
	end
end