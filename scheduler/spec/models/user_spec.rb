require 'rails_helper'

describe User do
  describe "validations" do
    xit "is not valid without email" do
      user = User.create
      user.valid?
      expect(user.errors).to_not be_empty
  end

    xit "is not valid without first name" do
      user = User.create(email: "myemail34@gmail.com")
      user.valid?
      expect(user.errors).to_not be_empty
    end

    xit "is not valid without last name" do
      user = User.create(email: "myemail55@gmail.com", first_name: "Charlie")
      user.valid?
      expect(user.errors).to_not be_empty
    end

    
    xit "should be valid" do
      user = User.new(email: "myemail2@gmail.com", first_name: "SM", last_name: "Bear", password: "password")
      user.valid?
      expect(user.errors).to be_empty
    end
  end
end  

