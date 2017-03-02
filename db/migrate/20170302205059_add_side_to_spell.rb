class AddSideToSpell < ActiveRecord::Migration[5.0]
  def change
    add_column :spells, :side, :boolean, default: false
  end
end
