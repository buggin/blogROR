class ArticlesController < ApplicationController
  def new
  	@authors = Author.all
  end
end
