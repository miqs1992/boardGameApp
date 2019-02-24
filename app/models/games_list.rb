# frozen_string_literal: true

class GamesList < ApplicationRecord
  belongs_to :user
  belongs_to :game
end
