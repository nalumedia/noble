class AddSigupTypeToSignup < ActiveRecord::Migration
  def change
    add_column :signups, :signup_type, :string
  end
end
