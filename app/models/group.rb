class Group < ApplicationRecord
  belongs_to :user
  validates :name, :icon, presence: true, length: { in: 1...500 }
end
