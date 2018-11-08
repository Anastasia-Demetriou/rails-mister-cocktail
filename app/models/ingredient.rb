class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true, uniqueness: true
  # validates :cocktail, :description, :ingredient, presence: true
end
