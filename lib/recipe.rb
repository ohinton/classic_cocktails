class Recipe < ActiveRecord::Base
  has_many :measurements
  has_many :ingredients, through: :measurement
  belongs_to :glass
  validates(:name, {:presence => true, :length => {:maximum => 50 }})
  before_save(:titlecase_name)

private

  define_method(:titlecase_name) do
    self.name=(name().titlecase())
  end

end
