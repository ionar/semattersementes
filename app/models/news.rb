class News < ApplicationRecord
  validates :title, :abstract, :description, presence: true
  has_many :photonoticias, dependent: :destroy

  def to_param
    [id, title.parameterize].join("-")
  end	
end
