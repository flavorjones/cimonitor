desc "Create configuration files from examples"
task :setup do
  puts 'Creating config/database.yml'
  system("cp config/database.yml.example config/database.yml") and puts "... done"

  puts 'Config/auth.yml'
  system("cp config/auth.yml.example config/auth.yml") and puts "... done"

  puts 'Generating auth site keys'
  Rake::Task["auth:gen:site_key"].invoke and puts "... done"
end