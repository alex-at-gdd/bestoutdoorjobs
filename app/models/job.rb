class Job < ActiveRecord::Base
	
	belongs_to :account
	validates :url, :url => {:no_local => true}
	scope :active, -> { where('created_at > ?', 30.days.ago) }
	delegate :name, to: :account, prefix: true



	 def days_left
	 		((created_at + 30.days - DateTime.now)/86400).round
	 end
end
