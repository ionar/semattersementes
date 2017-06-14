class News < ApplicationRecord
  validates :title, :description, presence: true
  has_many :photonoticias, dependent: :destroy

  def to_param
    [id, title.parameterize].join("-")
  end	
end
