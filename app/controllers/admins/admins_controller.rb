class Admins::AdminsController < ApplicationController
  before_action :authenticate_admin!

  layout 'admins'

  # def index
  #   @admins = Admin.page(params[:page]).reverse_order
  #   adminx = Admin.search(params[:search])
  #     @admins_search = adminx.page(params[:page]).reverse_order
  # end

  def index
  end

  def top

  end

  def search
    @admins = Admin.search(params[:search])
    redirect_to admins_path
  end

end
