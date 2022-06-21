class Bill < ApplicationRecord
  belongs_to :paid_by, class_name: 'User', foreign_key: 'paid_by_id', required: true
end
