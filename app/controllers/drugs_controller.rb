class DrugsController < ApplicationController
  def index
  end

  def new
    @drugs = Drug.all
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

