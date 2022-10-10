class Expenditure < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :category, foreign_key: 'category_id'

  validates :name, presence: true
  validates :name, length: { maximum: 25 }
  validates :amount, presence: true
  validate :amount, numericality: { only_integer: true, greater_than: 0 }
end
