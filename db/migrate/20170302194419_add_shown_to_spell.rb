class AddShownToSpell < ActiveRecord::Migration[5.0]
  def change
    add_column :spells, :shown, :boolean
  end
end
