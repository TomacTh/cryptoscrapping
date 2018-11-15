desc "spam twitter chomage"
  task twitter_thp: :environment do
     puts "Début de mon programme"
     TwitterThp.new.chomage
     puts "Le programme a tourné"
  end
