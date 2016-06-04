require 'rails_helper'

RSpec.describe User, type: :model do

  describe "creation" do

    it "has a valid class" do
      expect(described_class).to_not be_nil
    end

    context "with invalid attributes" do
      
    
      it "should not be valid without firstname or lastname" do
        @user = build(:user, firstname: "", lastname: "")
        expect(@user.save).to be false
      end
      
        it "should not be valid if username is empty" do
        @user = build(:user, username: "")
        expect(@user.save).to be false
      end
      
    it "should not be valid if username has less than 6 chars" do
        @user = build(:user, username: "HH")
        expect(@user.save).to be false
      end
      

        
   it "should not allow duplicated users" do
        @user = build(:user)
        @user.save
        @user2 = build(:user, username: @user.username)
        
        
        expect(@user2.save).to be false
      end
     
        it "should not valid if email is empty" do
        @user = build(:user, email: "")
        expect(@user.save).to be false
      end
      
      it "should not allow duplicated emails" do
        @user = build(:user)
        @user.save
        @user2 = build(:user, email: @user.email)
        
        
        expect(@user2.save).to be false
      end
    end

    context "with valid attributes" do

      it "should be valid" do
        @user = build(:user)
        expect(@user.save).to be true
      end
      
      
       it "should not valid if password is empty" do
        @user = build(:user, password: "")
        expect(@user.save).to be false
      end

    end

  end

end