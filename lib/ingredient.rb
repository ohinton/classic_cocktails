class Ingredient < ActiveRecord::Base
  has_many :measurements
  has_many :recipes, through: :measurements

end
