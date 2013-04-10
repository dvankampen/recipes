class NewRecipe < ActiveRecord::Base
  attr_accessible :ingredients, :name
  
  validates :name,  :presence => true
  validates :ingredients, :presence => true,
                    :length => { :minimum => 5 }
end
