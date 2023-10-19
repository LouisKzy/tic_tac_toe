
Dir.mkdir("/home/spooker/projet-html-css/THP/fullstack/s_04/d_19/tic_tac_toe/lib")
file = File.open("/home/spooker/projet-html-css/THP/fullstack/s_04/d_19/tic_tac_toe/Gemfile", "w")

contenu = file.puts("source 'https://rubygems.org'\nruby '3.2.2'\ngem 'pry'\ngem 'rspec'\ngem 'bundler'")
system("rspec --init")
system("bundle install")
system("git init")
system("git add *")