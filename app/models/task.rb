class Task < ApplicationRecord
  has_many :task_types, dependent: :destroy
  has_many :types, through: :task_types

  accepts_nested_attributes_for :task_types, allow_destroy: true,
    reject_if: ->(attrs) { attrs['type_id'].blank? }

end
