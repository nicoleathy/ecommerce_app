class Basket < ApplicationRecord

	belongs_to :user
	has_many :items_baskets	

end