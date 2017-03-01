class SpellsController < ApplicationController

	def index
  end

  def show
  end

  def new

  end

  def add_spell
  	@name = params[:name]
  end

  def create
    @deck = Deck.find(params[:deck_id])
    @spell = @deck.spells.new(spell_params)
    @spell.deck = @deck
    spell = MTG::Card.where(name: '"@name"').all
    spell = spell.last
    @spell.mana_cost = spell.mana_cost
    if @spell.save
    	redirect_to edit_deck_path(@deck)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def spell_params
    params.require(:spell).permit([:name])
  end

end
