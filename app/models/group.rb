class Group < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar
  validates :name, presence: true, length: { in: 1...100 }
end
