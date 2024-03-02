class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_article, except: [:index, :new, :create]
  def index
    @articles = Article.all;
  end

  def show
    #@article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    #puts @articles
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
    #@article = Article.find(params[:id])
  end

  def update
    #@article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    #@article = Article.find(params[:id])
    @article.destroy
    #render :index
    redirect_to "/articles"
  end
  private

  def article_params
    params.require(:article).permit(:title, :text)# here go you parameters for an article
  end

  private
  def set_article
    @article = Article.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path
  end
end
