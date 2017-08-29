class Phase < ApplicationRecord
  belongs_to :transformer
  has_many :trans_mouthpieces, inverse_of: :phase
  accepts_nested_attributes_for :trans_mouthpieces, :reject_if => :all_blank, :allow_destroy => true
  enum fase: ['A','B','C','D']
end
