class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :slug
      t.boolean :active
      t.string :type
      t.string :status
      t.datetime :scheduled_start
      t.datetime :actual_start
      t.references :sport, null: false, foreign_key: true
      t.decimal :price, precision: 8, scale: 2
      t.timestamps
    end
  end
end
