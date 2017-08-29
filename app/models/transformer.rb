class Transformer < ApplicationRecord
  has_many :phases, inverse_of: :transformer
  has_many :trans_mouthpieces, through: :phases
  accepts_nested_attributes_for :phases,
                                allow_destroy: true,
                                reject_if: proc { |att| att['num_serie'].blank? }
  enum transformador_type: ['De Potencia','De Instrumento']

end
