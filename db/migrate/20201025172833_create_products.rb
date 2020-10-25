# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false, limit: 256
      t.string :slug, null: false, limit: 1024
      t.integer :price, null: false, comment: 'Price in cents'
    end

    add_index :products, [:name, :slug], unique: true
  end
end
