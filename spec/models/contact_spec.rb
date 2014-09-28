require 'rails_helper'

describe Contact do
  let(:contact) { FactoryGirl.create(:contact) }

  same_ip = '11.22.33.444'

  context "valid attributes" do
    it "1 ip should be valid" do
      expect(contact.valid?).to eq(true)
    end
    
    it "4 same ip should be valid" do
      FactoryGirl.create_list(:contact, 3, :ip_address => same_ip)
      contact4 = FactoryGirl.build(:contact, :ip_address => same_ip)
      expect(contact4.valid?).to eq(true)
    end

    it "5 different ip should be valid" do
      FactoryGirl.create_list(:contact, 4)
      contact5 = FactoryGirl.build(:contact)
      expect(contact5.valid?).to eq(true)
    end
  end

  context "invalid attributes" do
    it "5 same ip should be invalid" do
      FactoryGirl.create_list(:contact, 4, :ip_address => same_ip)
      contact5 = FactoryGirl.build(:contact, :ip_address => same_ip)
      expect(contact5.valid?).to eq(false)
    end
  end
end