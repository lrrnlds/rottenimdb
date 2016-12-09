class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.integer :rating
      t.integer :vote_count
      t.integer :movie_id
      t.integer :user_id

      t.timestamps
    end
  end
end
