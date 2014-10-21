require 'test_helper'

class DoiTablesControllerTest < ActionController::TestCase
  setup do
    @doi_table = doi_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doi_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doi_table" do
    assert_difference('DoiTable.count') do
      post :create, doi_table: { desc: @doi_table.desc, name: @doi_table.name, url: @doi_table.url }
    end

    assert_redirected_to doi_table_path(assigns(:doi_table))
  end

  test "should show doi_table" do
    get :show, id: @doi_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doi_table
    assert_response :success
  end

  test "should update doi_table" do
    patch :update, id: @doi_table, doi_table: { desc: @doi_table.desc, name: @doi_table.name, url: @doi_table.url }
    assert_redirected_to doi_table_path(assigns(:doi_table))
  end

  test "should destroy doi_table" do
    assert_difference('DoiTable.count', -1) do
      delete :destroy, id: @doi_table
    end

    assert_redirected_to doi_tables_path
  end
end
