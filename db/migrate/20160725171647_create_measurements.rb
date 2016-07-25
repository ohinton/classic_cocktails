class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table (:measurements) do |t|
      t.column(:measurement, :string)
      t.column(:recipe_id, :int)
      t.column(:ingredient_id, :int)
    end
  end
end
