class Ingredient < ActiveRecord::Base
  has_many :measurements
  has_many :recipes, through: :measurements

  validates(:name, {:presence => true, :length => {:maximum => 50 }})

end
