class Product < ApplicationRecord
  belongs_to :cultivation
  belongs_to :cycle
end
