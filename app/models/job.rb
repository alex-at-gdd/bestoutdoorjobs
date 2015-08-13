class Job < ActiveRecord::Base
	 scope :active, -> { where('created_at <= ?', 30.days.ago) }
end
