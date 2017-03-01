class RenameCardsToSpells < ActiveRecord::Migration[5.0]
  def change
  	rename_table :cards, :spells
  end
end
