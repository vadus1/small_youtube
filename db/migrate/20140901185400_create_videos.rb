class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.references :user, index: true
      t.string :title, null: false
      t.string :file
      t.string :file_tmp
      t.text :description

      t.timestamps null: false
    end
  end
end
