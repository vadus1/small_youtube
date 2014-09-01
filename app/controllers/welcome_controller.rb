class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @videos = Video.newest
  end
end
