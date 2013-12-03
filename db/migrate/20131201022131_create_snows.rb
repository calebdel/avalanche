class CreateSnows < ActiveRecord::Migration
  def change
    create_table :snows do |t|
      t.string :photo
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
