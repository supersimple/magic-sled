require 'rails_helper'

RSpec.describe User, type: :model do
  
  before(:each) do
    NoBrainer.sync_schema
    NoBrainer.purge! 
  end
  
  describe "#has_image?" do
    it "returns true if user has an image file stored" do
      user = build(:user)
      expect(user.has_image?).to be_truthy
    end
  end
  
  describe "#!has_image?" do
    it "returns false if user does not have an image file stored" do
      user = build(:user, :no_image)
      expect(user.has_image?).to be_falsey
    end
  end
  
end
