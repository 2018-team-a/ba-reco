class Admins::LabelsController < ApplicationController
  before_action :authenticate_admin!
  layout "admins"

  def index
    @labels = Label.page(params[:page]).reverse_order
		labelsx = Label.search(params[:search])
		@labels_search = labelsx.page(params[:page]).reverse_order
  end

  def show
    @label = Label.find(params[:id])
  end

  def new
    @label = Label.new
  end

  def create
    @label = Label.new(label_params)
    if @label.save
      flash[:notice] = "レーベル名登録完了"
      redirect_to admins_labels_path
    else
      render :new
    end
  end

  def edit
    @label = Label.find(params[:id])
  end

  def update
    @label = Label.find(params[:id])
    if @label.update(label_params)
      flash[:notice] = "レーベル名編集完了"
      redirect_to admins_label_path(@label.id)
    else
      render :edit
    end
  end

  def destroy
    label = Label.find(params[:id])
    label.destroy
    redirect_to admins_labels_path
  end

  private
  def label_params
    params.require(:label).permit(:name)
  end

end
