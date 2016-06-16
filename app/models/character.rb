class Character < ActiveRecord::Base
  has_many :games
  has_many :users, through: :games

  has_many :character_items
  has_many :items, through: :character_items
end
