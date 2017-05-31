require_relative "spec_helper"
require_relative "../home_stuff.rb"

def app
  HomeStuff
end

describe HomeStuff do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
