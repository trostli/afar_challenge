require 'spec_helper'

describe User do

  let(:user_attributes) {
    { name: "Daniel", email: "daniel@example.com", password: "dolphins" }
  }

  context "#save" do

    let(:user) { User.new }

    it "raises an error if email or password is missing" do
      expect { user.save! }.to raise_error
    end

    it "creates a new user when name, email, and password is supplied" do
      user.name = user_attributes[:name]
      user.email = user_attributes[:email]
      user.password = user_attributes[:password]
      expect { user.save }.to change(User, :count).by(1)
      expect(User.last.name).to eql(user_attributes[:name])
    end

  end

end
