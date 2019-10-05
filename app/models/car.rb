class Car < ApplicationRecord
  belongs_to :make
  has_and_belongs_to_many :parts


  validates :make, presence: true
  validates_associated :parts
  validates :model, presence: true, length: { in: 2..16 }
  validates :vin, presence: true, uniqueness: true, 
    format: { with: /[0-9]/}, length: { is: 6 }, numericality: { only_integer: true }

end
