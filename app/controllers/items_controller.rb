class ItemsController < ApplicationController
  def index
    selected_character = params[:selected_character]

    @items = current_user.games.find_by(character_id: selected_character).character.items
  end

  def show
    @item = Item.find(params[:id])
  end
end
