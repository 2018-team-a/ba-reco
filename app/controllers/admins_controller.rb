class AdminsController < ApplicationController

  layout 'admins'

  def index
    @admins = Admin.all
  end

  def top

  end


end
