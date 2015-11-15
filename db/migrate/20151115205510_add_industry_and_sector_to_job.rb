class AddIndustryAndSectorToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :industry, :integer
    add_column :jobs, :job_category, :integer
    add_column :jobs, :position_type, :integer

  end
end
