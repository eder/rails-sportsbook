# frozen_string_literal: true

FactoryBot.define do
  factory :sport do
    name { Faker::Sports::Football.team || 'Default Name' }
    slug { name ? name.parameterize : 'default-slug' }
    active { [true, false].sample }
  end
end
