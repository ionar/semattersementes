class Product < ApplicationRecord
  belongs_to :cultivation
  belongs_to :cycle
  has_many :products_purposes_relations
  has_many :purposes, through: :products_purposes_relations

  #accepts_nested_attributes_for :products_purposes_relations
end
