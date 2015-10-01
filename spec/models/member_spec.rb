require 'rails_helper'

RSpec.describe Member, type: :model do
  
  before(:each) do
    NoBrainer.sync_schema
    NoBrainer.purge! 
  end
  
  describe "#assign_receiver" do
    it "should assign a member_id" do
      members = build_list(:member, 2, :unassigned)
      members.first.assign_receiver(members.last.id)
      expect(members.first.member_id).to_not be_nil 
    end
  end
  
  describe "#has_assignment?" do
    it "should return true if a member_id is set" do
      member = build(:member, :assigned)
      expect(member.has_assignment?).to be_truthy
    end
  end
  
  describe "#!has_assignment?" do
    it "should return false if a member_id is not set" do
      member = build(:member, :unassigned)
      expect(member.has_assignment?).to be_falsey
    end
  end
  
  describe "#is_assigned?" do
    it "should return true if another member is assigned this member as a receiver" do
      member_a = create(:member)
      member_b = create(:member)
      member_b.member_id = member_a.id
      member_b.save
      expect(member_a.is_assigned?).to be_truthy
    end
  end
  
  describe "#!is_assigned?" do
    it "should return flase if no other member is assigned this member as a receiver" do
      member_a = create(:member)
      member_b = create(:member, :unassigned)
      expect(member_a.is_assigned?).to be_falsey
    end
  end
  
  describe "#assignment" do
    it "should return the member that is assigned as the receiver of this member" do
      member_a = create(:member)
      member_b = create(:member)
      member_b.member_id = member_a.id
      member_b.save
      expect(member_b.assignment).to eq(member_a)
    end
  end
  
  describe "#!assignment" do
    it "should return nil if this member is not assigned a receiver" do
      member_a = create(:member, :unassigned)
      expect(member_a.assignment).to be_nil
    end
  end
  
  describe "#assigned_to" do
    it "should return the member that is assigned this member as a receiver" do
      member_a = create(:member)
      member_b = create(:member)
      member_b.member_id = member_a.id
      member_b.save
      expect(member_a.assigned_to).to eq(member_b)
    end
  end

  describe "#!assigned_to" do
    it "should return nil if no member is assigned this member" do
      member_a = create(:member)
      expect(member_a.assigned_to).to be_nil
    end
  end
end
