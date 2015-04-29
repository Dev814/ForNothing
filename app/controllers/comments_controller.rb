class CommentsController < ApplicationController

  def new
     @freebie = Freebie.find(params[:freeby_id])
  end

  def create
    @freebie = Freebie.find(params[:freeby_id])
    # Create a comment
    # a = Comment.new(freebie_id: , text:" hello" )

    # if a.save etc
    @comment = @freebie.comments.create(comment_params)
    redirect_to freeby_path(@freebie)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end

end
