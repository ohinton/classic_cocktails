class AddIngredientIdColumn < ActiveRecord::Migration
  def change
    add_column(:recipes, :ingredient_id, :int)
  end
end
