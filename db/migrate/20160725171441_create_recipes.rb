class CreateRecipes < ActiveRecord::Migration
  def change
    create_table (:recipes) do |t|
      t.column(:name, :string)
      t.column(:instruction, :string)
      t.column(:glass_id, :int)
    end
  end
end
