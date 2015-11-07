class CommentsController < ApplicationController
  def create
    @wallpaper = Wallpaper.find(params[:wallpaper_id])
    @comment = @wallpaper.comments.create(comment_params)
    redirect_to wallpaper_path(@wallpaper)
  end

  def destroy
    @wallpaper = Wallpaper.find(params[:wallpaper_id])
    @comment = @wallpaper.comments.find(params[:id])
    @comment.destroy
    redirect_to wallpaper_path(@wallpaper)
  end




  private
      def comment_params
        params.require(:comment).permit(:commenter, :body)
      end
end
