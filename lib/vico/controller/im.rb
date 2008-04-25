
ctx('/im') do

  get '/' do
    haml :im, :layout => nil
  end
  
  get '/digsby' do
    <<-ERB
     <embed src="http://w.digsby.com/dw.swf?c=ok597i0rahry8c7a" type="application/x-shockwave-flash" wmode="transparent" 
            width="210" height="398" />
    ERB
  end
  
end

