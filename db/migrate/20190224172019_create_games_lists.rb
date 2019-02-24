# frozen_string_literal: true

class CreateGamesLists < ActiveRecord::Migration[5.2]
  def change
    create_table :games_lists do |t|
      t.references :game, index: true
      t.references :user, index: true
      t.string :name, null: false
      t.boolean :public_access, null: false, default: true

      t.timestamps
    end
    add_foreign_key :games_lists, :users
    add_foreign_key :games_lists, :games
    add_index :games_lists, %i[user_id game_id], unique: true
  end
end
