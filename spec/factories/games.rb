# frozen_string_literal: true

FactoryBot.define do
  factory :game do
    name { Faker::Games::Pokemon.unique.name }
    min_players { 1 }
    difficulty { 1 }
    duration { 30 }
  end
end
