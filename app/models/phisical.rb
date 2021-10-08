class Phisical < ApplicationRecord
    has_many :images, as: :imageable
end
