# frozen_string_literal: true

class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.string :item_name

      t.timestamps
    end
  end
end
