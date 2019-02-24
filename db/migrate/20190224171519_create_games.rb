# frozen_string_literal: true

class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name, index: true, unique: true, null: false
      t.integer :min_players, null: false, default: 1
      t.integer :max_players, null: false, default: 1
      t.integer :opt_players, null: false, default: 1
      t.integer :difficulty, null: false, default: 1
      t.integer :interaction, null: false, default: 1
      t.integer :complexity, null: false, default: 1
      t.integer :duration, null: false, default: 1
      t.string :link
      t.integer :mark, null: false, default: 1
      t.timestamps
    end
  end
end
