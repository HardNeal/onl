class Podrazdel < ApplicationRecord
	belongs_to :bazar
	has_many :containers
end
