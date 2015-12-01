class UserPolicy < ApplicationPolicy
  # attr_reader :user, :record
  #
  # def initialize
  #   @user = user
  #   @record = record
  # end

  def show?
    user.present? && record == user
  end
end
