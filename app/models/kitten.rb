class Kitten < ApplicationRecord
  validates :name, :age, :cuteness, :softness, presence: true
  validates :name, length: { minimum: 1, maximum: 20 }
  validates :softness, :cuteness, numericality: { in: 0..10 }
  validates :age, numericality: { greater_than_or_equal_to: 0 }
end
