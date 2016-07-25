class CreateGlasses < ActiveRecord::Migration
  def change
    create_table (:glasses) do |t|
      t.column(:name, :string)
    end
  end
end
