class Container < ApplicationRecord
	belongs_to :podrazdel
	belongs_to :user
	has_many :products
end
