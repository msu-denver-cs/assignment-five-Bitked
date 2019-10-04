class Make < ApplicationRecord
    has_many :cars

    validates_associated :cars
    validates :make, length: { in: 2..20 }
    validates :country, length: { in: 2..20 }
end
