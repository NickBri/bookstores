require "test_helper"

class BookStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_store = book_stores(:one)
  end

  test "should get index" do
    get book_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_book_store_url
    assert_response :success
  end

  test "should create book_store" do
    assert_difference("BookStore.count") do
      post book_stores_url, params: { book_store: { name: @book_store.name } }
    end

    assert_redirected_to book_store_url(BookStore.last)
  end

  test "should show book_store" do
    get book_store_url(@book_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_store_url(@book_store)
    assert_response :success
  end

  test "should update book_store" do
    patch book_store_url(@book_store), params: { book_store: { name: @book_store.name } }
    assert_redirected_to book_store_url(@book_store)
  end

  test "should destroy book_store" do
    assert_difference("BookStore.count", -1) do
      delete book_store_url(@book_store)
    end

    assert_redirected_to book_stores_url
  end
end
