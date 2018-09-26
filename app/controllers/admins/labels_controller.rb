class Admins::LabelsController < ApplicationController

  layout "admins"

  def index
    @labels = Label.all
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
      flash[:notice] = "successfully"
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
      flash[:notice] = "successfully"
      redirect_to label_path(@label.id)
    else
      render :edit
    end
  end

  def destroy
    label = Label.find(params[:id])
    label.destroy
    redirect_to labels_path
  end

  private
  def label_params
    params.require(:label).permit(:name)
  end

end
