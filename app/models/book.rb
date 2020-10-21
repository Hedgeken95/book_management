class Book < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true
end
