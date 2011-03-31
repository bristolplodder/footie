namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
        100.times do |n|
          name  = "name"
          home = "home team"
          home_score  = 1
	      away = "away team"
	      away_score = 1
          Game.create!(:name => name,
                       :home => home,
				       :home_score => home_score,
                       :away => away,
                       :away_score => away_score)
         end
  end
end
