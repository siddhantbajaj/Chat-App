class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :data
      t.string :user_id

      t.timestamps null: false
    end
  end
end
