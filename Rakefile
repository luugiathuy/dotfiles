require 'rake'
require 'fileutils'
require 'rake/win32'

desc "install the dot files into user's home directory"
task :default do
  replace_all = false
  Dir['*'].each do |file|
    next if %w[.gitignore .gitmodules LICENSE Rakefile README.md fonts config].include? file

    if File.exist?(File.join(ENV['HOME'], ".#{file}"))
      if replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file}"
        end
      end
    else
      link_file(file)
    end
  end

  system %Q{mkdir ~/.tmp}
  Rake::Task['vundle'].execute
end

desc "Install neobundle for vim plugins"
task :vundle do
  target = "~/.vim/bundle/neobundle.vim"
  path = translate_path(target)
  FileUtils.rm_rf(path) if File.exists?(path)
  `git clone "https://github.com/Shougo/neobundle.vim" "#{path}"`
  puts "Running BundleInstall to install plugins...this will take a couple minutes."
  `vim +NeoBundleInstall +qall`
  puts "vim plugins installed."
end

def replace_file(file)
  system %Q{rm "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end

def self.translate_path(path)
  if path[0].chr === '~'
    path[0] = ENV['HOME']
  end
  normalize(path)
end

def self.normalize(path)
  Rake::Win32.normalize(path)
end
