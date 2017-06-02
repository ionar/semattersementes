class Resale < ApplicationRecord
	validates :name, presence: true

	default_scope { order(name: :asc) }
end
