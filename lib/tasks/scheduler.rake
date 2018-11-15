desc "Twitter bot "
task :update_feed => :environment do
  puts "Updating feed..."
  Twitterthp.new.polemploi
  puts "done."
end
