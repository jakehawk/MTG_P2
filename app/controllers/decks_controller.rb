class DecksController < ApplicationController

	def index
		@decks = params[:user_id] ? User.find(params[:user_id]).decks : Deck.all
  end

  def show
  	@deck = Deck.find(params[:id])
  	@spell = Spell.new
  end

  def new
  	@deck = Deck.new
  end

  def create
  	@deck = Deck.new(deck_params)
  	@deck.user = current_user
  	if @deck.save
  		redirect_to edit_deck_path(@deck)
  	else
  		redirect_to :new
  	end
  end

  def edit
  	@deck = Deck.find(params[:id])
  	@spell = Spell.new
  end

  def update
  	if @deck.update_attributes(deck_params)
      redirect_to deck_path(@deck)
    else
      render :edit
    end
  end

  def destroy
    @deck = Deck.find(params[:id])
  	@deck.destroy
  	redirect_to decks_path
  end

private
  def deck_params
    params.require(:deck).permit(:name)
  end
end
