class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :email
      t.date :dob
      t.string :bio

      t.timestamps
    end
  end
end
