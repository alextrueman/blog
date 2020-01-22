class Car < ApplicationRecord
  has_and_belongs_to_many :drivers

  validates :title, presence: true

  enum color: { blue: 0, yellow: 1, red: 2 }
end
