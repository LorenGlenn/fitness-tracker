class Summary < ActiveRecord::Base
  belongs_to :user
  has_many :foods
  has_many :exercises
end
