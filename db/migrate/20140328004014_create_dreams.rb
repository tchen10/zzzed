class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.date :date
      t.string :entry
      t.string :image_url
      t.integer :user_id

      t.timestamps
    end
  end
end
