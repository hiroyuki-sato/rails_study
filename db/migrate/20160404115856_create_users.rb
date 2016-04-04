class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :kana_name
      t.string :mail_address
      t.integer :sex
      t.integer :age
      t.date :birthday

      t.timestamps null: false
    end
  end
end
