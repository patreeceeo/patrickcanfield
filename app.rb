require 'rubygems'
require 'sinatra'
require 'haml'
require 'maruku'

# Helpers
require './lib/helpers'
require './lib/render_partial'

# Set Sinatra variables
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, 'views'
set :public_folder, 'public'
set :haml, {:format => :html5} # default Haml format is :xhtml

# Application routes
get '/' do
  haml :index, :layout => :'layouts/application'
end

get '/resume' do
  haml :resume, :layout => :'layouts/application'
end



