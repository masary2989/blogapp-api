require 'test_helper'

class UserArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_article = user_articles(:one)
  end

  test "should get index" do
    get user_articles_url, as: :json
    assert_response :success
  end

  test "should create user_article" do
    assert_difference('UserArticle.count') do
      post user_articles_url, params: { user_article: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show user_article" do
    get user_article_url(@user_article), as: :json
    assert_response :success
  end

  test "should update user_article" do
    patch user_article_url(@user_article), params: { user_article: {  } }, as: :json
    assert_response 200
  end

  test "should destroy user_article" do
    assert_difference('UserArticle.count', -1) do
      delete user_article_url(@user_article), as: :json
    end

    assert_response 204
  end
end
