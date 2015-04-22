class CreateFreebies < ActiveRecord::Migration
  def change
    create_table :freebies do |t|
      t.string :item
      t.date :date
      t.string :location
      t.text :description

      t.timestamps null: false
    end
  end
end
