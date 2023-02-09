class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    # byebug
    @item = Item.new
  end

  def create
    inventory = Inventory.find(params[:inventory_id])
    # byebug
    @item = inventory.items.new(item_params)

    if @item.save
      CrudNotificationMailer.create_notification(@item).deliver_now
      redirect_to inventorys_url
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    # byebug
    @item = Item.find(params[:id])

    if @item.update(item_params)
      CrudNotificationMailer.update_notification(@item).deliver_now
      redirect_to inventorys_url
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    # byebug
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to root_path, status: :see_other
  end
  private
    def item_params
      params.require(:item).permit(:name, :price, :rating)
    end
end
