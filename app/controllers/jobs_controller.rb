class JobsController < ApplicationController
	def index
		@jobs = Job.all.active
	end

	def show
	end

	def new
		@job = Job.new
	end

	def create
	end

	private

		def job_params
			require(:job).permit(:title, :location, :url, :company)
		end
end