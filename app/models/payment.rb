class Payment < ApplicationRecord
    has_many :types, as: :typeable
    has_many :orders
end
