class Exercise < ActiveRecord::Base
  belongs_to :summary
  validates :type, :user_id, :presence => true
end
