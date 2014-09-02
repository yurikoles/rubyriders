require 'rails_helper'

describe Contact do
  let(:contact) { FactoryGirl.create(:contact) }

  context "valid attributes" do
    it "1 ip should be valid" do
      expect(contact.valid?).to eq(true)
    end

    it "4 ip should be valid" do
      (1..3).each do
        FactoryGirl.create(:contact, :ip_address => '11.22.33.444')
      end
      expect(FactoryGirl.build(:contact, :ip_address => '11.22.33.444').valid?).to eq(true)
    end
  end

  context "invalid attributes" do
    it  "5 ip should not be valid" do
      (1..4).each do
        FactoryGirl.create(:contact, :ip_address => '11.22.33.444')
      end
      expect(FactoryGirl.build(:contact, :ip_address => '11.22.33.444').valid?).to eq(false)
    end
  end
end