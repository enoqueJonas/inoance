class Entity < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { in: 1...100 }
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
