FactoryBot.define do

	factory :post do
		date  { Date.today }
		rationale { "Some Rationale" }
		user { create(:user)} 
	end
	
	factory :second_post, class: Post do
		date  { Date.yesterday }
		rationale { "Some Other Rationale" }
		user 
	end

	factory :post_from_another_user, class: Post do
		date  { Date.yesterday }
		rationale { "should not see this" }
		user { FactoryBot.create(:nonauthorized_user) }
	end	
end