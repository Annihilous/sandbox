class BalatroHandType < ApplicationRecord
  validates :name, 
            presence: true,
            uniqueness: true

  validates :mult_base,
            :mult_increase,
            :chip_base,
            :chip_increase,
            presence: true

  def leveled_chips(level)
    chip_base + chip_increase * (level - 1)
  end

  def leveled_mult(level)
    mult_base + mult_increase * (level - 1)
  end
end
