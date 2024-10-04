class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.text :description
      t.string :user_name
      t.boolean :softdelete, default: false

      t.timestamps
    end
  end
end
