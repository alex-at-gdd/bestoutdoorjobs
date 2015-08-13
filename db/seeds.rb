unless Job.any?
	50.times do
		Job.create(   :company => Faker::Company.name,
									:title => Faker::Name.title,
									:url => "http://#{Faker::Internet.domain_name}/",
									:location => Faker::Address.city,
	                :description => Faker::Lorem.paragraph(5)
								)
	end
end
