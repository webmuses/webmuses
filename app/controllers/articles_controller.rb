class ArticlesController < ApplicationController
  def index
    @title = t('articles.headline')
    @articles = Article.all.shuffle
  end
end
