require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
   end

  get "/multiply/:num1/:num2" do
    #have to turn numbers into integers as they are a string in the http
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    #turn product back into a string to display
    (num1 * num2).to_s
   end

end
