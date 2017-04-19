class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy

  validates_presence_of :name, :address
  validates_inclusion_of :category, in: CATEGORIES, message: "%{value} is not a category"

end
