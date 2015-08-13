class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :title
      t.string :location
      t.text :description
      t.string :url

      t.timestamps null: false
    end
  end
end
