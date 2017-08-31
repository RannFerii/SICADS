class Reactor < ApplicationRecord
    has_many :react_mouthpieces, inverse_of: :reactor
    accepts_nested_attributes_for :react_mouthpieces, :reject_if => :all_blank, :allow_destroy => true
end
