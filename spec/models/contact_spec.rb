require 'rails_helper'

RSpec.describe Contact, :type => :model do
  context "valid attributes" do
    it "1 ip should be valid" do
      expect(FactoryGirl.build(:contact).valid?).to eq(true)
    end

    it "4 ip should be valid" do
      (1..3).each do
        FactoryGirl.build(:contact).save
      end
      expect(FactoryGirl.build(:contact).valid?).to eq(true)
    end
  end

  context "invalid attributes" do
    it  "5 ip should not be valid" do
      (1..4).each do
        FactoryGirl.build(:contact).save
      end
      expect(FactoryGirl.build(:contact).invalid?).to eq(true)
    end
  end
end