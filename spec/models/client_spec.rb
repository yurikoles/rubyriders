require 'rails_helper'

RSpec.describe Client, :type => :model do
  let(:client) { FactoryGirl.create(:client) }

  context "valid attributes" do
    it "client should be valid" do
      expect(client.valid?).to eq(true)
    end

    it "client should be active" do
      expect(client.active?).to eq(false)
    end
  end

  context "invalid attributes" do
    it "client without short description should be invalid" do
      client_without_description = FactoryGirl.build(:client, :short_description => "")
      expect(client_without_description.valid?).to eq(false)
    end
  end
end

