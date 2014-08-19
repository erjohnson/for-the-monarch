require 'spec_helper'

describe 'Campaign' do
  it 'initializes with a hash' do
    new_campaign = Campaign.new({:knight_id => 1, :province_id => 3})
    expect(new_campaign).to be_an_instance_of Campaign
  end

  it 'lets you read knight id' do
    new_campaign = Campaign.new({:knight_id => 1, :province_id => 3})
    expect(new_campaign.knight_id).to eq 1
  end

  it 'lets you read province id' do
    new_campaign = Campaign.new({:knight_id => 1, :province_id => 3})
    expect(new_campaign.province_id).to eq 3
  end

  describe '.all' do
    it 'starts as an empty array' do
      expect(Campaign.all).to eq []
    end

    it 'returns all campaigns' do
      new_campaign1 = Campaign.new({:knight_id => 1, :province_id => 3})
      new_campaign2 = Campaign.new({:knight_id => 5, :province_id => 2})
      new_campaign1.save
      new_campaign2.save
      expect(Campaign.all).to eq [new_campaign1, new_campaign2]
    end
  end
end
