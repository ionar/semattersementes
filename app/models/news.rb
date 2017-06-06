class News < ApplicationRecord
  validates :title, :description, presence: true

  def to_param
    [id, title.parameterize].join("-")
  end	
end
