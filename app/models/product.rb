class Product < ApplicationRecord
  #belongs_to :cultivation
  has_and_belongs_to_many :cultivation
  belongs_to :cycle
  has_many :products_purposes_relations, dependent: :delete_all
  has_many :purposes, through: :products_purposes_relations
  has_many :photo_products

  #accepts_nested_attributes_for :products_purposes_relations
	validates :name, presence: true
	validates :name, uniqueness: true

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.jpg"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

	
	default_scope { order(name: :asc) }  
  #default_scope { where(active: true) }

  scope :ativos, -> { where(active: true) }

  def to_param
    [id, name.parameterize].join("-")
  end

  #scope :para_o_cultivo, -> (cultivo) { where cultivation_id: cultivo }
  #scope :storage, -> (storage_id) { where storage_id: storage_id }
end
