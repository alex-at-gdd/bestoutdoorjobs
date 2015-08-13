class JobsController < ApplicationController
	def index
		@jobs = Job.all.active
	end

	def show
	end

	def new
	end
end