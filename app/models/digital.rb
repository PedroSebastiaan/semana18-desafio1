class Digital < ApplicationRecord
    has_one :image, as: :imageable
end
