class User < ApplicationRecord
  has_many :bills

  def name_and_age
    "#{first_name} - #{age}"
  end

  def age_in_months
    age
  end
end
