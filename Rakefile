desc "Run tests"
task :spec do
  sh "rspec"
end

desc "Install"
task :install do
  output = sh "gem build nlz.gemspec"
  mygem = Dir["*.gem"].sort.last
  if mygem
    sh "gem install #{mygem}"
  else
    puts "Couldn't find gem to install"
  end
end

task :default => :spec