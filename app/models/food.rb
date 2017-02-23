class Food < ActiveRecord::Base
  belongs_to :summary
  validates :name, :presence => true
end
