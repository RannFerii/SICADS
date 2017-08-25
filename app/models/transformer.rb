class Transformer < ApplicationRecord
  has_many :mouthpieces, through: :phases
  has_many :phases, inverse_of: :transformer
  accepts_nested_attributes_for :phases,
                                allow_destroy: true,
                                reject_if: proc { |att| att['num_serie'].blank? }
end
