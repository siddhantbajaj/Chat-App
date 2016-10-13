class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :tweet_id
      t.integer :user_id
      t.integer :upvotes

      t.timestamps null: false
    end
  end
end
