require "application_system_test_case"

class BookStoresTest < ApplicationSystemTestCase
  setup do
    @book_store = book_stores(:one)
  end

  test "visiting the index" do
    visit book_stores_url
    assert_selector "h1", text: "Book stores"
  end

  test "should create book store" do
    visit book_stores_url
    click_on "New book store"

    fill_in "Name", with: @book_store.name
    click_on "Create Book store"

    assert_text "Book store was successfully created"
    click_on "Back"
  end

  test "should update Book store" do
    visit book_store_url(@book_store)
    click_on "Edit this book store", match: :first

    fill_in "Name", with: @book_store.name
    click_on "Update Book store"

    assert_text "Book store was successfully updated"
    click_on "Back"
  end

  test "should destroy Book store" do
    visit book_store_url(@book_store)
    click_on "Destroy this book store", match: :first

    assert_text "Book store was successfully destroyed"
  end
end
