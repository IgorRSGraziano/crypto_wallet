class WelcomeController < ApplicationController
  def index
    @name = params[:name] ||= 'Igor'
  end
end
