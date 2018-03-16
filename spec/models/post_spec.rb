require "rails_helper"

describe Post, type: :model do
  post = FactoryGirl.create :post
  it "should pass validates" do
    expect(post).to be_valid
  end
end
