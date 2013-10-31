 
task :default => :bin

desc "Ejecutar las espectativas de la clase Racional"
task :bin do
  sh "rspec -I. spec/fraccion_rspec.rb"
end

desc "Ejecutar las espectativas de la clase Racional"
task :test do
  sh "rspec -I. spec/fraccion_rspec.rb --format documentation"
end

desc "Ejecutar las espectativas de la clase Racional"
task :thtml do
  sh "rspec -I. spec/fraccion_rspec.rb --format html"
end