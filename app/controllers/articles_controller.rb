class ArticlesController < ApplicationController
  before_action :set_article, only: %i(edit show destroy)

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
    @article.nearests.build
    binding.pry
  end

  def create
    if Article.create(article_params)
      redirect_to articles_path, notice: '登録に成功しました'
    else
      flash.now[:danger] = '入力に不備がありました'
      render :new
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path, notice: '物件情報の削除に成功しました'
  end
  private

  def article_params
    params.require(:article).permit(:name, :rent, :address, :age, :remark,
      nearests_attributes: [:id, :line_name, :station_name, :walk_time],
      )
  end

  def set_article
    @article = Article.find_by(id: params[:id])
  end
end