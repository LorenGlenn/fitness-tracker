class Exercise < ActiveRecord::Base
  belongs_to :summary
  validates :workout, :presence => true
end
