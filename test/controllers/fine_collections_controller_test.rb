require 'test_helper'

class FineCollectionsControllerTest < ActionController::TestCase
  setup do
    @fine_collection = fine_collections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fine_collections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fine_collection" do
    assert_difference('FineCollection.count') do
      post :create, fine_collection: { due_date: @fine_collection.due_date, fine_amount: @fine_collection.fine_amount, return_date: @fine_collection.return_date }
    end

    assert_redirected_to fine_collection_path(assigns(:fine_collection))
  end

  test "should show fine_collection" do
    get :show, id: @fine_collection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fine_collection
    assert_response :success
  end

  test "should update fine_collection" do
    patch :update, id: @fine_collection, fine_collection: { due_date: @fine_collection.due_date, fine_amount: @fine_collection.fine_amount, return_date: @fine_collection.return_date }
    assert_redirected_to fine_collection_path(assigns(:fine_collection))
  end

  test "should destroy fine_collection" do
    assert_difference('FineCollection.count', -1) do
      delete :destroy, id: @fine_collection
    end

    assert_redirected_to fine_collections_path
  end
end
