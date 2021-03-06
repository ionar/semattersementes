class Purpose < ApplicationRecord
	has_many :products_purposes_relations, dependent: :delete_all
	has_many :products, through: :products_purposes_relations
	
	validates :name, presence: true
	validates :name, uniqueness: true

	
	default_scope { order(name: :asc) }
end
