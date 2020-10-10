class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def show
    @article = Article.find(params[:id])
  end
  def edit
    @article = Article.find(params[:id])
  end
  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    @article.save
    redirect_to article_path(@article)
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
