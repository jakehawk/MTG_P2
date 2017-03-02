class RemoveTypeFromSpell < ActiveRecord::Migration[5.0]
  def change
    remove_column :spells, :type, :string
  end
end
