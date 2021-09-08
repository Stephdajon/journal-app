require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test "should not save task without body" do
    task = Task.new
    task.category_id = '1'
    assert_not category.save, "Saved the category without a name"
  end
end
