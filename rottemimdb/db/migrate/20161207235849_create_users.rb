class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.boolean :trusted
      t.string :email
      t.string :password_digest
      t.string :username
      t.string :first_name

      t.timestamps
    end
  end
end
