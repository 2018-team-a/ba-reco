class Admins::PurchasesController < ApplicationController

  layout "admins"


  def index
    purchasex = Purchase.search(params[:search])
    @purchases = purchasex.page(params[:page]).reverse_order
  end

end
