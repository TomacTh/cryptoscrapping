desc "Twitter bot "
task :twitterthp => :environment do
  puts "Updating feed..."
  Twitterthp.new.polemploi
  puts "done."
end
