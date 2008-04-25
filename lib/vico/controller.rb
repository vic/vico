helpers do 
  def js(path)
    erb File.read(File.join(Sinatra.application.options.public, '/js/vico', path.to_s + ".js")), :scope => self
  end
end

get '/' do
  haml :index
end

get '/load' do
  SessionCache.cache.clear
  Sinatra.application.reload!
  load __FILE__
  redirect '/'
end
    
get '/load/*' do 
  file = File.expand_path('../' + params['splat'].first, File.dirname(__FILE__))
  if !File.exist?(file)
    file = File.expand_path('../vendor/' + params['splat'].first, File.dirname(__FILE__))
  end
  
  if File.exist?(file)
    load file  
  else
    puts "NO Such file: #{file}"
    throw :halt, 404, "No such file: #{file}"
  end
  redirect '/'
end


require 'vico/controller/im'

