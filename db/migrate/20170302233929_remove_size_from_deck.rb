class RemoveSizeFromDeck < ActiveRecord::Migration[5.0]
  def change
    remove_column :decks, :size, :string
  end
end
