class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.all
  end

  def show
    @invoice = Invoice.find(params[:id])
    # byebug
    @item = Item.find(@invoice.item_id)
    @costomer = Costomer.find(@invoice.costomer_id)
  end

  def new
    @invoice = Invoice.new
  end

  def create
    # @invoice = Invoice.new(total_price:item.price,)

    if @invoice.save
      redirect_to invoice_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
