class Sheet < ApplicationRecord
  belongs_to :pad, polymorphic: true
end
