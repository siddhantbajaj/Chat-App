class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :data
      t.string :from
      t.string :to

      t.timestamps null: false
    end
  end
end
