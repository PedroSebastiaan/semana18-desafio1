class Type < ApplicationRecord
  belongs_to :typeable, polymorphic: true
  has_many :orders
end
