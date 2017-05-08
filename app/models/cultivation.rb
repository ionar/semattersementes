class Cultivation < ApplicationRecord
	has_many :products, :dependent => :delete_all

	validates :name, presence: true
	validates :name, uniqueness: true

	
	default_scope { order(name: :asc) }
end
