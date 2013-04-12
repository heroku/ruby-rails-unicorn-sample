RESPONSE_TIME = (ENV["RESPONSE_TIME"] || raise("missing RESPONSE_TIME")).to_f

class WelcomeController < ApplicationController
  def index
  	sleep(RESPONSE_TIME)
    render :text => "hi\n"
  end
end
