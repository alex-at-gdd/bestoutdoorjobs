class Job < ActiveRecord::Base
  INDUSTRIES = ['Mountain', 'Ocean', 'Trail', 'Skate']
  CATEGORIES = ['Full Time', 'Temp', 'Seasonal', 'Hourly']
  POSITION_TYPES = ['Cook', 'Construction', 'Hospitality', 'Ski Bum']

	belongs_to :account
	validates :url, :url => {:no_local => true}
	scope :active, -> { where('created_at > ?', 30.days.ago) }
	delegate :name, to: :account, prefix: true

  enum :industry => INDUSTRIES
  enum :job_category => CATEGORIES
  enum :position_type => POSITION_TYPES

  def days_left
 		((created_at + 30.days - DateTime.now)/86400).round
  end

end
