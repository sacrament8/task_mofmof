class ArticlesController < ApplicationController
  before_action :set_article, only: %i(edit show destroy update)

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
    2.times { @article.nearests.build }
  end

  def create
    begin
      Article.create!(article_params)
      redirect_to articles_path, notice: '登録に成功しました'
    rescue StatementInvalid
      flash.now[:danger] = '入力欄に空欄があります'
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to articles_path, notice: '物件情報の更新に成功しました'
    else
      flash.now[:danger] = '入力欄に空欄があります'
      render :edit
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