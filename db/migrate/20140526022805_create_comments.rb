class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :data
      t.integer :location, default: 0
      t.integer :like, default: 0

      t.timestamps
    end
  end
end
