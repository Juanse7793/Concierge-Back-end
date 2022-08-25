class HomeController < ApplicationController
  def index
    redirect_to :swagger
  end
end
