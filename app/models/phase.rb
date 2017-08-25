class Phase < ApplicationRecord
  belongs_to :transformer
  has_many :mouthpieces, inverse_of: :phase
  accepts_nested_attributes_for :mouthpieces, :reject_if => :all_blank, :allow_destroy => true
end
