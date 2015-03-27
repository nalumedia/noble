class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.string :signup_name
      t.string :signup_email
      t.string :signup_phone
      t.string :signup_status

      t.timestamps
    end
  end
end
