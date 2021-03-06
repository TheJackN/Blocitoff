class Item < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true
  validates :name, length: { minimum: 2 }, presence: true

end
