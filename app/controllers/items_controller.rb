class ItemsController < ApplicationController
  def index
    @selected_character = params[:selected_character]

    # @character_items = current_user.games.find_by(character_id: @selected_character).character.items
    @character_items = Item.all

    # @armor_items = character_items.where(item_type: "Armor")

    # @consumable_items = character_items.where(item_type: "Consumable")
  end

  def show
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id]).character_items.find_by(character_id: @selected_character)
    item.update(quantity: item.quantity - 1)

    redirect_to '/items'
  end
end
