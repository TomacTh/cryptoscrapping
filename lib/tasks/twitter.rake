namespace :twitter do
  desc "spam twitter"
  task twitter_thp: :environment do
     puts "Début de mon programme"
     TwitterThp.new.polemploi
     puts "Le programme a tourné"
  end
end
