class Types::UserType < Types::BaseObject

  description "One User"

  field :id, ID, null: false
  field :first_name, String, null: true, camelize: false
  field :last_name, String, null: true, camelize: false
  field :email, String, null: true
  field :age, Int, null:true
  field :created_at, GraphQL::Types::ISO8601DateTime, null: true

  field :full_name, String, null: true
  field :name_and_age, String, null: true
  field :age_in_months , Types::MonthOldType, null: true


  def full_name
    "#{object.first_name} #{object.last_name}"
  end
end
