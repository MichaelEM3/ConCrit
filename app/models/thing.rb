class Thing < ActiveRecord::Base
  validates :description, :name, presence: true
  has_many :comments
end
