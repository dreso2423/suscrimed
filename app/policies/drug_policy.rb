class DrugPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

  end

  def show?
    true
  end

  def add_to_invoice?
    true
  end
end
