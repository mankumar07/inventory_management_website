# frozen_string_literal: true

class Addquantityinvoices < ActiveRecord::Migration[7.0]
  def change
    add_column :invoices, :quantity, :string
  end
end
