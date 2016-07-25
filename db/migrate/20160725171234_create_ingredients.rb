class CreateIngredients < ActiveRecord::Migration
  def change
    create_table (:ingredients) do |t|
      t.column(:name, :string)
    end
  end
end
