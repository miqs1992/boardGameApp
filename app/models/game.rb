# frozen_string_literal: true

class Game < ApplicationRecord
  has_many :games_lists
  has_many :users, through: :games_lists
end
