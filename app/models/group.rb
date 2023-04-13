class Group < ApplicationRecord
  belongs_to :user
  has_many :group_entities
  has_many :entities, through: :group_entities
  has_one_attached :avatar
  validates :name, presence: true, length: { in: 1...100 }

  def transactions_sum
    sum = 0
    entities.each do |entity|
      sum = sum + entity.amount
    end
    sum
  end
end
