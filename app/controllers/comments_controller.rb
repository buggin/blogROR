class CommentsController < ApplicationController
  def new
  	@article = Article.find(params[:article_id])
    @comment = Comment.new article_id: @article.id
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to articles_path
  end
  private
    def comment_params
      params.require(:comment).permit(:title, :body, :article_id)
    end
end
