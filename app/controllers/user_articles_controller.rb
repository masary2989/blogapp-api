class UserArticlesController < ApplicationController
  load_and_authorize_resource

  # GET /user_articles
  def index
    render json: @user_articles
  end

  # GET /user_articles/1
  def show
    @user_article = UserArticle.last
    render json: @user_article
  end

  # POST /user_articles
  def create
    @user_article = UserArticle.new(user_article_params)

    if @user_article.save
      render json: @user_article, status: :created, location: @user_article
    else
      render json: @user_article.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_articles/1
  def update
    if @user_article.update(user_article_params)
      render json: @user_article
    else
      render json: @user_article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_articles/1
  def destroy
    @user_article.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_article
      @user_article = UserArticle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_article_params
      params.fetch(:user_article, {}).permit(:user_id, :title)
    end
end
