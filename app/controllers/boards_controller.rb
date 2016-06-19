class BoardsController < ApplicationController
  def index

  end

  def show
    selected_character = params[:selected_character]

    @current_board = current_user.games.find_by(character_id: selected_character).game_boards.find_by(board_id: params[:id]).board
    @user_character = current_user.games.find_by(character_id: selected_character).character
  end
end
