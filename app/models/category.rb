class Category < ApplicationRecord
  belongs_to :user, optional: true, dependent: :destroy
  has_many :books, dependent: :destroy

  validates :name, presence: true
end
