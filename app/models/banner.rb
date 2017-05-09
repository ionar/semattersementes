class Banner < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :image, attachment_presence: true

  #scope :crescente, -> { order("banners.sequence ASC")}
  default_scope { order(sequence: :asc) }
end
