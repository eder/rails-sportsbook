# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Sport, type: :model do
  it 'is valid with valid attributes' do
    sport = build(:sport)
    expect(sport).to be_valid
  end

  it 'is not valid without a name' do
    sport = build(:sport, name: nil)
    expect(sport).not_to be_valid
  end

  it 'has a unique slug' do
    create(:sport, name: 'football')
    sport = build(:sport, slug: 'football')
    expect(sport).not_to be_valid
  end
end
