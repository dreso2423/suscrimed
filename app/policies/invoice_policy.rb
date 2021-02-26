class InvoicePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def checkout?
    true
  end


  def new?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

end
