class SpellsController < ApplicationController

	def index
  end

  def show
  end

  def new

  end

  def add_spell

  end

  def create
    @deck = Deck.find(params[:deck_id])
    @spell = @deck.spells.new(spell_params)
    @spell.deck = @deck
    api_name = spell_params.first[1]
    @options = MTG::Card.where(name: '"' + api_name + '"').all
    

    @spell.mana_cost = @options.last.mana_cost
    @spell.img_url = @options.last.image_url
    @spell.name = @options.last.name
    if @spell.save
    	redirect_to edit_deck_path(@deck)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  	@spell = Spell.find(params[:id])
  	@spell.destroy
  	redirect_to deck_path(@deck)
  end

  private
  def spell_params
    params.require(:spell).permit([:name])
  end

end
