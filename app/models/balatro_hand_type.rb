class BalatroHandType < ApplicationRecord
  validates :name, 
            presence: true,
            uniqueness: true

  validates :mult_base,
            :mult_increase,
            :chip_base,
            :chip_increase,
            presence: true
end
