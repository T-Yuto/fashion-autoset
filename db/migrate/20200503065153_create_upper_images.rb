class CreateUpperImages < ActiveRecord::Migration[5.2]
  def change
    create_table :upper_images do |t|
      t.text :image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
