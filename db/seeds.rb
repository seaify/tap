['admin', 'operator'].each do |name|
  role = Role.create!(name: name)
  10.times do |n|
    Project.create!(name: "project-#{n}") do |project|
      2.times do
        project.notification_templates.build(name: "notification template #{rand(100)}", context: "text #{rand(100)}", role: role)
        project.locations.build(latitude: rand(10.0..100.0), longitude: rand(10.0..100.0))
      end
    end
  end
end

10.times do |n|
  User.create!(
    email: "tap_#{n}@gmail.com",
    password: 'password',
    name: "tap_#{n}",
  ) do |user|
    projects = Project.all.sample(2)
    projects.each do |project|
      UserProject.create!(user: user, project: project, role: Role.all.sample)
    end
    2.times do
      user.locations.build(latitude: rand(10.0..100.0), longitude: rand(10.0..100.0))
    end
  end

end

