class DrugsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end
end


  def index

    if params[:query].present?
      @drugs = Drug.search_by_name(params[:query])
    else
      @drugs = Drug.all
    end

  end

  def show
    @drug = Drug.find(params[:id])
  end

  def edit
    @drug = Drug.find(params[:id])
  end

  def new
    @drug = Drug.new
  end

  def create
    @drug = Drug.new(drug_params)
    @truck.owner = current_user
    if @truck.save
      redirect_to truck_path(@truck)
    else
      render :new
    end
  end

  def update
    @truck = Truck.find(params[:id])
    if @truck.update(truck_params)
      redirect_to truck_path(@truck)
    else
      render :edit
    end
  end

  def destroy
    @truck = Truck.find(params[:id])
    @truck.destroy
    redirect_to truck_path(@truck)
  end
