class Product < ApplicationRecord
  #belongs_to :cultivation
  has_and_belongs_to_many :cultivation
  belongs_to :cycle
  has_many :products_purposes_relations, dependent: :delete_all
  has_many :purposes, through: :products_purposes_relations

  #accepts_nested_attributes_for :products_purposes_relations
	validates :name, presence: true
	validates :name, uniqueness: true

	
	default_scope { order(name: :asc) }  
end
