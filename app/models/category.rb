class Category < ApplicationRecord
  belongs_to :user
  has_many :books

  validates :name, presence: true
end
