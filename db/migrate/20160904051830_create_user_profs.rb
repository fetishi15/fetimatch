class CreateUserProfs < ActiveRecord::Migration
  def change
    create_table :user_profs do |t|
      t.integer :age
      t.string :img
      t.string :place
      t.string :name
      t.string :tall
      t.string :weight
      t.integer :sex
      t.integer :body_type
      t.string :hobby
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
