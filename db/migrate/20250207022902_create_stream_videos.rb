class CreateStreamVideos < ActiveRecord::Migration[8.0]
  def change
    create_table :stream_videos do |t|
      t.references :stream, null: false, foreign_key: true
      t.references :video, null: false, foreign_key: true

      t.timestamps
    end
  end
end
