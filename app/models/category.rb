class Category < ApplicationRecord
  #has_many!= belongs_to
  has_many :products
end
