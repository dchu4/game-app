class GameBoard < ActiveRecord::Base
  belongs_to :board
  belongs_to :game

  has_one :user, through: :game
end
