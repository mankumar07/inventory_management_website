# frozen_string_literal: true

class InvoicesController < ApplicationController
  def index
    @costomer = Costomer.find(1)
    @invoices = @costomer.invoices
  end

  def show
    @invoice = Invoice.find(params[:id])
  end

  def new
    @item = Item.find(params[:item_id])
    @invoice = Invoice.new
  end

  def create
    costomer = Costomer.find(1)
    @invoice = costomer.invoices.create(quantity: params[:invoice][:quantity],
                                        total_price: params[:invoice][:total_price], item_id: params[:item_id])

    if @invoice.save
      redirect_to invoices_index_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def invoice_params
    params.require(:invoice).permit(:quantity, :total_price)
  end
end
