class Driver < ApplicationRecord
  has_and_belongs_to_many :cars
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: ['image/png']



  validates :name, presence: true
end
