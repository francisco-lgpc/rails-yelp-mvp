class Review < ApplicationRecord
  belongs_to :restaurant
  validates_presence_of :content
  validates :rating, numericality: { only_integer: true }

  validates_inclusion_of :rating, in: 0..5, message: "Please enter a number between 0 and 5"

end
