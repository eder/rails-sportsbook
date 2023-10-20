# frozen_string_literal: true

class CreateSelections < ActiveRecord::Migration[7.0]
  def change
    create_table :selections do |t|
      t.string :name
      t.decimal :price
      t.boolean :active
      t.string :outcome
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
