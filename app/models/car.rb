class Car < ApplicationRecord
  has_and_belongs_to_many :drivers
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: ['image/png']

  validates :title, presence: true

  enum color: { blue: 0, yellow: 1, red: 2 }
end
