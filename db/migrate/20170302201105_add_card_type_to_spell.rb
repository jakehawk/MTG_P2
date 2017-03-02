class AddCardTypeToSpell < ActiveRecord::Migration[5.0]
  def change
    add_column :spells, :card_type, :string
  end
end
