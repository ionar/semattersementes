class Cultivation < ApplicationRecord
	#has_many :products, :dependent => :delete_all
	has_and_belongs_to_many :products

	validates :name, presence: true
	validates :name, uniqueness: true

	
	default_scope { order(name: :asc) }
end
