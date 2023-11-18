require 'rails_helper'

RSpec.describe User, type: :model do
  it "is invalid with a duplicate user_id" do
    user_id = "userXYZ"
    user0 = User.create(user_id: user_id, password: "");
    user1 = User.new(user_id: user_id, password: "");
    expect(user1).to be_invalid
  end
end
