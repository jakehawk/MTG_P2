class AddNumCardsToDeck < ActiveRecord::Migration[5.0]
  def change
    add_column :decks, :num_cards, :integer, default: 0
  end
end
