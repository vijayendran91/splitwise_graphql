class Types::BillType < Types::BaseObject

  field :id, ID, null: false
  field :amount, Int, null:false
  field :desc, String, null: true
  field :no_parts, Int, null: false

end
