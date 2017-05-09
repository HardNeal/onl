class Container < ApplicationRecord
	belongs_to :bazar
	belongs_to :user
	has_many :products
end
