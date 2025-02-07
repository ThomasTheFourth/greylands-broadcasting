class CreateVideos < ActiveRecord::Migration[8.0]
  def change
    create_table :videos do |t|
      t.string :youtube_url
      t.string :stream_url
      t.string :backup_url
      t.string :api_key

      t.timestamps
    end
  end
end
