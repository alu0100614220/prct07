$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec


desc "Ejecutar las espectativas de la clase Racional"
task :spec do
  sh "rspec -I. spec/fraccion_rspec.rb"
end

desc "Ejecutar las espectativas de la clase Racional"
task :test  do
  sh "rspec -I. spec/fraccion_rspec.rb --format documentation"
end

desc "Ejecutar las espectativas de la clase Racional"
task :thtml do
  sh "rspec -I. spec/fraccion_rspec.rb --format html"
end
