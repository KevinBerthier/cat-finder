class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.date :found_at
      t.string :color
      t.string :photo_url

      t.timestamps
    end
  end
end
