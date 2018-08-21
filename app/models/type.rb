class Type < ApplicationRecord
  has_many :events
  has_many :task_types, dependent: :destroy
  has_many :tasks, through: :task_types

  accepts_nested_attributes_for :task_types, allow_destroy: true,
    reject_if: :all_blank
end
