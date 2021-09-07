require "test_helper"

class CategoryTest < ActiveSupport::TestCase

  test "should not save category without name" do
    category = Category.new
    category.body = 'Hey'
    assert_not category.save, "Saved the category without a name"
  end

  test "should not save category without body" do
    category = Category.new
    category.title = 'Project'
    assert_not category.save, "Saved the category without a body"
  end
  
end
