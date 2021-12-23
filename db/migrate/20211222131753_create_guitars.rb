class CreateGuitars < ActiveRecord::Migration[6.0]
  def change
    create_table :guitars do |t|
      t.string :guitar_name,         null: false
      t.integer :guitar_type_id,     null: false
      t.integer :strings_number_id,  null: false
      t.integer :price,              null: false
      t.text :features,              null: false
      t.text :url
      t.references :builder,         null: false, foreign_key: true

      t.timestamps
    end
  end
end
