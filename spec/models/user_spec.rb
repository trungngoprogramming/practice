require "rails_helper"

describe User, type: :model do
  user = FactoryGirl.create :user
  it {is_expected.to validate_presence_of(:name)}
  it {is_expected.to validate_presence_of(:email)}
  it {is_expected.to validate_acceptance_of(:accept_age)}
  it "should pass validates" do
    expect(user).to be_valid
  end
end
