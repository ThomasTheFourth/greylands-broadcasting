class CreateStreams < ActiveRecord::Migration[8.0]
  def change
    create_table :streams do |t|
      t.string :title
      t.string :performer
      t.integer :year_released
      t.string :record_label

      t.timestamps
    end
  end
end
