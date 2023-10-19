class CreateSports < ActiveRecord::Migration[7.0]
  def change
    create_table :sports do |t|
      t.string :name
      t.string :slug
      t.boolean :active

      t.timestamps
    end
  end
end
