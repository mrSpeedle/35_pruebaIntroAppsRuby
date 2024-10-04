class AddProfileImageUrlToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :profile_image_url, :string
  end
end
