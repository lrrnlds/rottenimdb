class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.integer :vote_count
      t.integer :user_id

      t.references :commentable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
