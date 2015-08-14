class JobManager

	def initialize(job_params, account_params)
		@job = Job.new(job_params)
		@account_params = account_params
	end

	def perform
		@account = Account.find_or_create_by(@account_params)
		@job.account = @account
		return @job
	end

end
