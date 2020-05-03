class CreateDownImages < ActiveRecord::Migration[5.2]
  def change
    create_table :down_images do |t|
      t.text :image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
