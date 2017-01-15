class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :tweet, null: false, limit: 150
      t.integer :user_id, null: false
    end
  end
end
