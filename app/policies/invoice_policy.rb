class InvoicePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    return true
  end
  def show?
    return true
  end

  def update?
    is_user_owner_or_admin
  end

  def destroy?
    is_user_owner_or_admin
  end

  def is_user_owner_or_admin
    user == record.user || user.admin
  end
end
