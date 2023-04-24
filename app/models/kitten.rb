class Kitten < ApplicationRecord
  validates :name, :age, :cuteness, :softness, presence: true
  validates :name, length: { minimum: 1, maximum: 20 }
  validates :softness,
            :cuteness,
            numericality: {
              in: 0..10,
              message:
                "I know your cat is super cute or soft but we only measure them in range from 0 to 10 "
            }
  validates :age, numericality: { greater_than_or_equal_to: 0 }
end
