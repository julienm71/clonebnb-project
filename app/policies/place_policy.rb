class PlacePolicy < ApplicationPolicy
  def create?
    return true
  end

  def show
    true
  end

  def index?
    true
  end

  def create?
    true
  end

  def new?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
