class Product < ApplicationRecord
  belongs_to :category

  validates_presence_of :price
  before_validation :set_default_premium

  def set_default_premium
  	if premium.nil? 
  		self.premium = false
  	end
  end
end
