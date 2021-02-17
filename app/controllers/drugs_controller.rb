class DrugsController < ApplicationController

skip_before_action :authenticate_user!


# como lo hago no mas para el index y show ?
# [[1], "$2a$12$rOdHCT2WAQTITEESkS5vQu"]
# [[2], "$2a$12$Xx7cacvM5p/XC47y5KNthe"]
# the una forma le pasas parametros a un controlador
# lecture del search hace forma y manda parametros en el path
# tambien en la de ajax y rails viene otra forma que puedo revisar
# cadda vez que dan agregar al boton del carrito voy a enviar al invoice los obtengo con params y los voy metiendo al invoice.
# en un futuro cuando le de checkout va ser un invoice create la invoice tiene invoice lines cada invoice tiene una invoice lines.

  def index
    if params[:querry].present?
      @drugs = Drug.search_by_drugs(params[:querry])
    else
      @drugs = policy_scope(Drug).order(created_at: :desc)
    end

  end

  def new
    @drug = Drug.new
  end

  def create
    @drug = Drug.create(drug_params)
  end

  def show
    @drug = Drug.find(params[:id])
    authorize @drug
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

  def add_to_invoice
    if session[:cart]
      if session[:cart][params[:drug_id].to_s]
        session[:cart][params[:drug_id].to_s] += 1
      else
        session[:cart][params[:drug_id].to_s] = 1
      end
    else
      session[:cart] = []
    end
    skip_authorization
    head :no_content
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

