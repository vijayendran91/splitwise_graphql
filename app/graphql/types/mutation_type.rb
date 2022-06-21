module Types
  class MutationType < Types::BaseObject

    field :create_user, Types::UserType, null: true, description: "Create User" do
      argument :first_name, String, required: false
      argument :last_name, String, required: false
      argument :email, String, required: false
      argument :age, Int, required: false
    end


    field :create_bill, Types::BillType, null: true, description: "Create a bill" do
      argument :amount, Int, required: true
      argument :desc, String, required: false
      argument :no_parts, Int, required: true
      argument :paid_by, Int, required: true
    end

    def create_user(first_name:, last_name:, age:, email:)
      User.create first_name: first_name, last_name: last_name, age: age, email: email
    end

    def create_bill(amount:, desc:, no_parts:, paid_by:)
      binding.pry
      user = User.where(:id => paid_by).first
      Bill.create amount: amount, desc: desc, no_parts: no_parts, paid_by: user, user_id: user.id
    end

  end
end
