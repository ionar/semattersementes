class ProductsPurposesRelation < ApplicationRecord
	belongs_to :product
  	belongs_to :purpose
  	#accepts_nested_attributes_for :purpose, reject_if: :all_blank, allow_destroy: true

  	default_scope { order(product_id: :asc) }
end
