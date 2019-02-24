# frozen_string_literal: true

FactoryBot.define do
  factory :games_list do
    game
    user
    name { Faker::Movies::HarryPotter.character }
    public_access { false }
  end
end
