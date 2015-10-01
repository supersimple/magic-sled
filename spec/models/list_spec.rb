require 'rails_helper'

RSpec.describe List, type: :model do
  
  before(:each) do
    NoBrainer.sync_schema
    NoBrainer.purge! 
  end
  
  describe "#shuffle_list" do
    it "returns an array" do
      list = build(:list)
      expect(list.shuffle_list).to be_an(Array)
    end
  end
  
  describe "#is_expired?" do
    it "returns true if event time is in the past" do
      list = build(:list, :expired)
      expect(list.is_expired?).to be_truthy
    end
  end
  
  describe "#!is_expired?" do
    it "returns false if event time is in the future" do
      list = build(:list)
      expect(list.is_expired?).to be_falsey
    end
  end
  
end
