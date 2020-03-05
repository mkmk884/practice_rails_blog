class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 3, message: 'Too short to post!'}
  validates :body, presence: true
  has_many :post_to_categories
  has_many :categories, through: :post_to_categories
  accepts_nested_attributes_for :post_to_categories, allow_destroy: true
end
