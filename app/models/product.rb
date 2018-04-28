class Product < ApplicationRecord
  # you can not create a product without a name.
  validates :name, presence: true,
                      length: { minimum: 3 },
                      length: { maximum: 30 }
  belongs_to :category
end
