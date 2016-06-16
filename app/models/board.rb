class Board < ActiveRecord::Base
  has_many :game_boards
  has_many :games, through: :game_boards
end
