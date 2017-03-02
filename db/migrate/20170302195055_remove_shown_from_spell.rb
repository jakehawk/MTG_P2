class RemoveShownFromSpell < ActiveRecord::Migration[5.0]
  def change
    remove_column :spells, :shown, :boolean
  end
end
