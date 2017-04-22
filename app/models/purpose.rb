class Purpose < ApplicationRecord
	has_many :products_purposes_relations
	has_many :products, through: :products_purposes_relations
end
