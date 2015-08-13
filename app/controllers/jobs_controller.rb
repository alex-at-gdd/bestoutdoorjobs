class JobsController < ApplicationController
	def index
		@jobs = Job.all.active
	end
end