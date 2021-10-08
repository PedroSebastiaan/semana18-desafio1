class Payment < ApplicationRecord
    belongs_to :user
    belongs_to :order
    has_many :types, as: :typeable
    has_many :orders
end
