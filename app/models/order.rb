class Order < ApplicationRecord
    belongs_to :user
    belongs_to :payment
    belongs_to :type
end
