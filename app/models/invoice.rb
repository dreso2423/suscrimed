class Invoice < ApplicationRecord
  belongs_to :user
  has_many :invoice_details , dependent: :destroy
  accepts_nested_attributes_for :invoice_details


  ## necesitamos atributos virtuales

  def total
    puts "hola"
    ## sacar total de todos los invoice details
    ## return 0 if invoice_details.empy?
    ## iterar sobre las lineas

  end
end
