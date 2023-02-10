class InventorysController < ApplicationController
  # before_action :authenticate_user! , only: %i[index , show ]


  def index
    @inventorys = Inventory.all
  end

  def show
    @inventory = Inventory.find(params[:id])
    @items = @inventory.items
  end

  def new
  end

  def create
  end
end
