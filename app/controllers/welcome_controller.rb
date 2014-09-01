class WelcomeController < ApplicationController
  def index
    @videos = Video.published
  end
end
