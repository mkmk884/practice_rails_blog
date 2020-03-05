class Category < ApplicationRecord
  has_many :post_to_categories
  has_many :posts, through: :post_to_categories
end
