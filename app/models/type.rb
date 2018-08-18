class Type < ApplicationRecord
  has_many :events
  has_many :task_types, dependent: :destroy
  has_many :tasks, through: :task_types
end
