class GameBoard < ActiveRecord::Base
  belongs_to :board
  belongs_to :game
end
