# frozen_string_literal: true

class CreateCostomers < ActiveRecord::Migration[7.0]
  def change
    create_table :costomers do |t|
      t.string :name
      t.string :email
      t.string :contact
      t.integer :password

      t.timestamps
    end
  end
end
