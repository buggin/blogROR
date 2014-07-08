class ArticlesController < ApplicationController
  def new
  	@authors = Author.all
  end

  def create
  	@article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  def show
  		@article = Article.find(params[:id])
      @comments= @article.comments
  end

  def index
  		@articles = Article.all
  end

  private
	  def article_params
	    params.require(:article).permit(:title, :body, :author_id)
	  end
end
