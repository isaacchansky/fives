require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get entries_url
    assert_response :success
  end

  test "should get new" do
    get new_entry_url
    assert_response :success
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post entries_url, params: { entry: { account_id: @entry.account_id, content: @entry.content, thing_five: @entry.thing_five, thing_four: @entry.thing_four, thing_one: @entry.thing_one, thing_three: @entry.thing_three, thing_two: @entry.thing_two, title: @entry.title } }
    end

    assert_redirected_to entry_path(Entry.last)
  end

  test "should show entry" do
    get entry_url(@entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_entry_url(@entry)
    assert_response :success
  end

  test "should update entry" do
    patch entry_url(@entry), params: { entry: { account_id: @entry.account_id, content: @entry.content, thing_five: @entry.thing_five, thing_four: @entry.thing_four, thing_one: @entry.thing_one, thing_three: @entry.thing_three, thing_two: @entry.thing_two, title: @entry.title } }
    assert_redirected_to entry_path(@entry)
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete entry_url(@entry)
    end

    assert_redirected_to entries_path
  end
end
