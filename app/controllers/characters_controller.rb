class CharactersController < ApplicationController
  def index
    @user_characters = Character.all
  end
  
  def new

  end

  def create
    if params[:character_class] == "Warrior"
      @character = Character.create(
        attack: 20,
        defense: 30,
        magic_attack: 0,
        magic_defense: 0,
        str: 10,
        int: 5,
        dex: 5,
        vit: 10,
        luk: 4,
        character_name: params[:character_name],
        character_class: params[:character_class],
        helm: "None",
        l_hand: "None",
        r_hand: "None",
        body_armor: "None",
        gloves: "None",
        shoes: "None",
        leg_armor: "None",
        is_npc: false
        )
    elsif params[:character_class] == "Mage"
      @character = Character.create(
        attack: 20,
        defense: 30,
        magic_attack: 0,
        magic_defense: 0,
        str: 10,
        int: 5,
        dex: 5,
        vit: 10,
        luk: 4,
        character_name: params[:character_name],
        character_class: params[:character_class],
        helm: "None",
        l_hand: "None",
        r_hand: "None",
        body_armor: "None",
        gloves: "None",
        shoes: "None",
        leg_armor: "None",
        is_npc: false
        )
    elsif params[:character_class] == "Thief"
      @character = Character.create(
        attack: 20,
        defense: 30,
        magic_attack: 0,
        magic_defense: 0,
        str: 10,
        int: 5,
        dex: 5,
        vit: 10,
        luk: 4,
        character_name: params[:character_name],
        character_class: params[:character_class],
        helm: "None",
        l_hand: "None",
        r_hand: "None",
        body_armor: "None",
        gloves: "None",
        shoes: "None",
        leg_armor: "None",
        is_npc: false
        )
    elsif params[:character_class] == "Ranger"
      @character = Character.create(
        attack: 20,
        defense: 30,
        magic_attack: 0,
        magic_defense: 0,
        str: 10,
        int: 5,
        dex: 5,
        vit: 10,
        luk: 4,
        character_name: params[:character_name],
        character_class: params[:character_class],
        helm: "None",
        l_hand: "None",
        r_hand: "None",
        body_armor: "None",
        gloves: "None",
        shoes: "None",
        leg_armor: "None",
        is_npc: false
        )
    end

    new_game = Game.create(user_id: current_user.id, character_id: @character.id)

    redirect_to "/characters/#{@character.id}"
  end

  def show
    @user_character = Character.find(params[:id])
  end

  def destroy
    del_character = Character.find(params[:id])
    del_character.destroy

    redirect_to '/'
  end
end
