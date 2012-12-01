class CreateUserexpenses < ActiveRecord::Migration
  def change
    create_table :userexpenses do |t|
      t.integer :user_id
      t.integer :split
      t.integer :split_type

      t.timestamps
    end
  end
end
