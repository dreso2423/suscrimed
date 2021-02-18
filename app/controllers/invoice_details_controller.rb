class InvoiceDetailsController < ApplicationController
  include CurrentInvoice

  ## before_action :set_invoice_details, only: [:show, :edit, :update, :destroy]
  ## before_action :set_invoice, only: [:show, :edit, :update, :destroy]



  def index
  end

  def edit
  end

  def create
  end

  def show
  end

  def update

  end

  def delete
    skip_authorization
    session[:cart].delete(params[:id])
    redirect_to new_invoice_path
  end

  private




end
