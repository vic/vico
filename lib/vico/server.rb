require 'sinatra'

Sinatra.options.env = :production
Sinatra.options.root = File.expand_path("../..", File.dirname(__FILE__))
Sinatra.options.public = File.expand_path("../../public", File.dirname(__FILE__))
Sinatra.options.views = File.expand_path("../../views", File.dirname(__FILE__))

