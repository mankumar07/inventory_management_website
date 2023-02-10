require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  # let!(:inventory) { Inventory.create(item_name: "New name") }
  # let(:valid_item_attributes) {
  #   {  name: "Somename", price: 10, rating: "4",inventory_id: inventory.id }
  # }
  # let!(:item) { inventory.items.create(valid_item_attributes) }

  describe 'GET index' do
    it 'renders a successful response' do
      # byebug
      inventory = Inventory.create(item_name: 'inventory_first')
      get :index, params: {inventory_id: inventory.id, item: {}}
      expect(response).to be_successful
    end
  end 

  describe 'GET show' do
    it 'renders a successful response' do
      inventory = Inventory.create(item_name: 'inventory_first')
      item = Item.create(name: "Somename", price: 10, rating: "4",inventory_id: inventory.id)
      get :show, params: { id: item.id }
      expect(response.status).to eq(200)
    end
  end

  describe 'GET new' do
    it 'renders a successful response' do
      get :new
      expect(response).to be_successful
    end
  end


end 




