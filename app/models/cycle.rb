class Cycle < ApplicationRecord
	has_many :products
	validates :name, presence: true
	validates :name, uniqueness: true

	
	default_scope { order(name: :asc) }	
end
