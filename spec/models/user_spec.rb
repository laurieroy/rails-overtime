require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.create(:user)
  end
  
  describe "creation" do
    it "can be created" do
      expect(@user).to be_valid
    end
  end

  describe "validation" do
    it "cannot be created without a first_name" do
      @user.first_name = nil
      expect(@user).to_not be_valid
    end

    it "cannot be created without a last_name" do
      @user.last_name = nil
      expect(@user).to_not be_valid
    end

    it "cannot be created without a phone number" do
      @user.phone = nil
      expect(@user).to_not be_valid
    end

    it "requires the phone attr to only contain integers" do
      @user.phone = 'mygreatstr'
      expect(@user).to_not be_valid
    end

    it "requires the phone attr to only have 10 characters" do
      @user.phone = '23456789011'
      expect(@user).to_not be_valid
    end
    
  end

  describe "custom name methods" do
    it 'has a full name method that combines first and last name' do
      expect(@user.name.sorted.upcase).to eq("TESTER, TEST")
    end
  end

  describe "relationship between admins and employees" do
    it 'allows for admins to be associated with multiple employees' do
      employee1 = FactoryBot.create(:user)
      employee2 = FactoryBot.create(:user)
      admin = FactoryBot.create(:admin_user)
      Hand.create!(user_id: admin.id, hand_id: employee1.id)
      Hand.create!(user_id: admin.id, hand_id: employee2.id)
      expect(admin.hands.count).to eq(2)
    end
  end
end
