class AddShowToSpell < ActiveRecord::Migration[5.0]
  def change
    add_column :spells, :show, :boolean, default: false
  end
end
