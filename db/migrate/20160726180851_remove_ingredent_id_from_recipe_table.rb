class RemoveIngredentIdFromRecipeTable < ActiveRecord::Migration
  def change
    remove_column(:recipes, :ingredient_id, :int)
  end
end
