require 'httparty'


class WelcomeController < ApplicationController


  def index
    search = params[:search]
    @vine = Welcome.vine(search)
  end

end
