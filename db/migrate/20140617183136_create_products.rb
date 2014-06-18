class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code_prefix
      t.string :code_suffix
      t.integer :code, null: false
      t.string :name, null: false
      t.decimal :weight, null: false
      t.integer :items_per_case
      t.references :product_type, index: true
      t.references :category, index: true, null: false
      t.references :markup, index: true, null: false
      t.references :item_class, index: true, null: false
      t.integer :upc
      t.integer :pallet_bag_count
      t.integer :pallet_case_count
      t.string :pallet_size
      t.decimal :pallet_weight
      t.boolean :gaylord
      t.text :description
      t.references :brand, index: true
      t.integer :production_line
      t.string :screen_size_top
      t.string :screen_size_bottom
      t.integer :catalog_page
      t.references :pallet, index: true

      t.timestamps
    end
    add_index :products, :code_prefix
    add_index :products, :code_suffix
    add_index :products, :code
    add_index :products, :upc
    add_index :products, :production_line
  end
end
