class AddPhotoColumnToRecipes < ActiveRecord::Migration
  def change
    add_column(:recipes, :photo, :string)
  end
end
