class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.text :description
      t.string :user_name
      t.boolean :softdelete

      t.timestamps
    end
  end
end
