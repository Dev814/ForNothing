class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.integer :upvotes
      t.references :freebie, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :freebies
  end
end
