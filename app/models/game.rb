class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :character

  has_many :game_boards
  has_many :boards, through: :game_boards
end
