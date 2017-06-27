require_relative 'config/environment'

class App < Sinatra::Base
  set :views, 'views'
  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

  get '/goodbye/:name' do
    @name = params[:name]
    "Goodbye, #{@name}."
  end

  get "/multiply/:number1/:number2" do
    @total = params[:number1].to_i * params[:number2].to_i
    "#{@total}"
  end

end
