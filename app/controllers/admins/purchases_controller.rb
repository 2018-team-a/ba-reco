class Admins::PurchasesController < ApplicationController

  layout "admins"

  def index
    purchasex = Purchase.search(params[:search])
    @purchases = purchasex.page(params[:page]).reverse_order
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def edit
    @purchase = Purchase.find(params[:id])
  end

  def update
    purchase = Purchase.find(params[:id])
	  purchase.update(purchase_params)
	  redirect_to admins_purchase_path(purchase.id)
  end

  private
  	def purchase_params
  	  params.require(:purchase).permit(:status)
  	end

end
