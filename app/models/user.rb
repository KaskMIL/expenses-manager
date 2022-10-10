class User < ApplicationRecord
  has_many :categories, foreign_key: 'user_id', dependent: :destroy
  has_many :expenditures, foreign_key: 'author_id', dependent: :destroy

  validates :name, presence: true
end
