require 'rails_helper'

RSpec.describe User, type: :model do
  it "is invalid with a duplicate user_id" do
    user0 = FactoryBot.create(:user)
    user1 = User.new(user_id: user0.user_id, password: "");

    expect(user1).to be_invalid
  end
end
