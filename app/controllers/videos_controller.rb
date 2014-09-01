class VideosController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_video, only: [:show, :destroy]

  def new
    @video = current_user.videos.build
  end

  def show
    @comments = @video.comments.newest
  end

  def create
    @video = current_user.videos.build(video_params)

    if @video.save
      redirect_to root_path, notice: 'Video was successfully created.'
    else
      render action: 'new'
    end
  end

  def destroy
    @video.destroy
    redirect_to root_path, notice: 'Video was successfully destroyed.'
  end

  private
    def video_params
      params.require(:video).permit(:title, :file, :file_cache, :description)
    end

    def set_video
      @video = Video.find(params[:id])
    end
end
