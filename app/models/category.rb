class Category < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :expenditures, foreign_key: 'category_id', dependent: :destroy
end
