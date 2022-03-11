class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :email
      t.datetime :date_of_birth
      t.string :country
      t.string :contact_number

      t.timestamps
    end
  end
end
