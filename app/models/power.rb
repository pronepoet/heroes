class Power < ApplicationRecord
    has_many :heroes, through: :hero_powers
    has_many :hero_powers

    # validations
    validates :description, length: {minimun: 20}
end
