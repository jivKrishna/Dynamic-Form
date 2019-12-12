class CreateVariants < ActiveRecord::Migration[6.0]
  def change
    create_table :variants do |t|
      t.string :name
      t.float :price
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
