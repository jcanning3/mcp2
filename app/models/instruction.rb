class Instruction < ApplicationRecord
  belongs_to :task
  belongs_to :event
end
