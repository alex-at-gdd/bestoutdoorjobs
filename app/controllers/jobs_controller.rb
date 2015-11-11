class JobsController < ApplicationController

	def index
		@jobs = Job.all.active.order('created_at DESC')
	end

	def show
	end

	def new
		@job = Job.new
	end

	def create
		@job = job_manager
		if @job.save
			redirect_to root_path
		else
			redirect_to :back, :flash => {:error => "Your URL must look like http://www.example.com"}
		end
	end

	private

		def job_manager
			JobManager.new(job_params, account_params).perform
		end

		def job_params
			params.require(:job).permit(:title, :location, :url, :company, :description,:sector,:category)
		end

		def account_params
			params.require(:account).permit(:name, :email)
		end
end