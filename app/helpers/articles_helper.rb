module ArticlesHelper
  def cahnge_button_name
    if action_name == 'new'
      '登録する'
    elsif action_name == 'edit'
      '更新する'
    end
  end
  def url_new_or_edit
    if action_name == 'new'
      articles_path
    elsif action_name == 'edit'
      article_path
    end
  end
end