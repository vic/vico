task :submodules do 
  sh 'git submodule init && git submodule update'
end

task :run do 
  cmd = ['ruby']
  cmd <<  '-I' <<  File.expand_path('lib', File.dirname(__FILE__))
  Dir.glob(File.expand_path('vendor/*/lib', File.dirname(__FILE__))) do |lib|
    cmd <<  '-I' <<  lib
  end
  cmd << File.expand_path('bin/vico', File.dirname(__FILE__))
  sh *cmd
end
