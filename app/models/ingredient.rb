class Ingredient < ActiveRecord::Base

  validates_presence_of :number, :description, :cost

end
