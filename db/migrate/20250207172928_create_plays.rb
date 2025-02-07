class CreatePlays < ActiveRecord::Migration[8.0]
  def change
    create_table :plays do |t|
      t.references :stream, null: false, foreign_key: true
      t.references :video, null: false, foreign_key: true
      t.datetime :played_at

      t.timestamps
    end
  end
end
