class DrugsController < ApplicationController

skip_before_action :authenticate_user!


# como lo hago no mas para el index y show ?

  def index
    @drugs = Drug.all
  end

  def new
    @drug = Drug.new
  end

  def create
    @drug = Drug.create(drug_params)
  end

  def show
    @drug = Drug.find(params[:id])
  end

  def edit
    @drug = Drug.find(params[:id])
  end

  def update
    @drug = Drug.find(params[:id])
    if @drug.update(drug_params)
      redirect_to drug_path(@drug)
    else
      render :edit
    end
  end

  def delete
    @drug = Drug.find(params[:id])
    @drug.destroy
    redirect_to drug_path(@drug)
  end

  private

  def drug_params
    params.require(:drug).permit(:drug_name, :quantity)
  end

end

