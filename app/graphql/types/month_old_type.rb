class Types::MonthOldType < Types::BaseObject
  field :months_old, Int, null: true
  field :weeks_old, Int, null: true
  field :days_old, Int, null: true

  def months_old
     object*12
  end

  def weeks_old
    (object*365)/7
  end

  def days_old
    object*365
  end
end
