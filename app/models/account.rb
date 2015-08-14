class Account < ActiveRecord::Base
	has_many :jobs
	validates_uniqueness_of :email
end
