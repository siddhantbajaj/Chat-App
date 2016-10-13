class CreateNotificatons < ActiveRecord::Migration
  def change
    create_table :notificatons do |t|
      t.integer :tweet_id
      t.string :from
      t.string :to

      t.timestamps null: false
    end
  end
end
