class Job < ActiveRecord::Base
  INDUSTRIES = ['Outdoors', 'Snow', 'Action', 'Bike', 'Fitness', 'Fishing', 'Hunting/Shooting']
  CATEGORIES = ['Design']
  POSITION_TYPES = ['Full Time', 'Part Time', 'Seasonal', 'Contract', 'Hourly', 'Freelance', 'Intern']

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
