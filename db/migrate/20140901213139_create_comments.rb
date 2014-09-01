class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.references :video, index: true
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
