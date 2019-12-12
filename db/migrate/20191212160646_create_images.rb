class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :url
      t.string :alt
      t.string :caption
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
