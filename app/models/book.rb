class Book < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :content, presence: true
end
