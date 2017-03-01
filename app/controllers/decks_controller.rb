class DecksController < ApplicationController

	def index
		@decks = params[:user_id] ? User.find(params[:user_id]).decks : Deck.all
  end

  def show
  	@deck = Deck.find(params[:id])
  	@spell = Spell.new
  end

  def new
  end

  def create
  end

  def edit
  	@deck = Deck.find(params[:id])
  	@spell = Spell.new
  end

  def update
  end

  def destroy
  end

end
