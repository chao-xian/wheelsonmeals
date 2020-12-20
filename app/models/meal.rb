class Meal < ApplicationRecord
  validates :name, presence: true
  validates :recipe, presence: true, length: { minimum: 10 }
end
