require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest

  test "should go to /categories path" do
    get categories_path

    assert_response :success
  end

  test "should go to /category/show path" do
    get categories_path(Category.first)

    assert_response :success
  end

  test "should go to /category/new path" do
    get new_category_path

    assert_response :success
  end

  test "should create category" do
    assert_difference("Category.count") do
      post categories_path, params: { category: { body: "Rails is awesome!", title: "Hello Rails" } }
    end
  
    assert_redirected_to categories_path(Category.last)
  end
  
end
