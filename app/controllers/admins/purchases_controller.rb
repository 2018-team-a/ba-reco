class Admins::PurchasesController < ApplicationController
  before_action :authenticate_admin!
  layout "admins"

  def index
    @purchases = Purchase.page(params[:page]).reverse_order
    purchasex = Purchase.search(params[:search])
    @purchases_search = purchasex.page(params[:page]).reverse_order
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
