class Cycle < ApplicationRecord
	has_many :products
	validates :name, :period_initial, :period_final, :description, presence: true
	validates :name, uniqueness: true

	
	default_scope { order(name: :asc) }	
end
