class CreateSounds < ActiveRecord::Migration[6.1]
  def change
    create_table :sounds do |t|
      t.string :title, null: false
      t.string :artist, null: false
      t.string :jenre, null: false
      t.text :introduction
      t.integer :user_id
      t.float :rate, null: false
      t.timestamps
    end
  end
end
