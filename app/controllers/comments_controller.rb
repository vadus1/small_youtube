class CommentsController < ApplicationController
  before_filter :authenticate_user!, except: :index
  before_filter :find_video
  before_filter :find_own_comment, only: :destroy

  respond_to :js

  def index
    @comments = @video.comments.newest
  end

  def create
    @comment = @video.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      @video.reload # reload counter cache data
    end
  end

  def destroy
    @comment.destroy
    @video.reload
  end
  
  private
    def find_video
      @video = Video.find(params[:video_id])
    end

    def find_own_comment
      @comment = current_user.comments.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:body)
    end
end
