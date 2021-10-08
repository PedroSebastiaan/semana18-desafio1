class Type < ApplicationRecord
  belongs_to :typeable, polymorphic: true
end
