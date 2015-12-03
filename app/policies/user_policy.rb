class UserPolicy < ApplicationPolicy

  def show?
    user.present?
  end

  def alter?
    user.present? && record == user
  end
end
