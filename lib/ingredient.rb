class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many :recipes

  validates(:name, {:presence => true, :length => {:maximum => 50 }})

  before_save(:titlecase_name)

  private

    def titlecase_name
      self.name=(name().titlecase())
    end
end
