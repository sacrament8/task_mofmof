class ArticlesController < ApplicationController
  before_action :set_article, only: %i(edit show)

  def index
    @articles = Article.all
  end

  def new

  end

  private

  def article_params
    params.require(:article).permit(:name, :rent, :address, :age,
      :remark)
  end

  def set_article
    @article = Article.find_by(id: params[:id])
  end

  def edit

  end

  def show

  end

  def destroy
    
  end
end