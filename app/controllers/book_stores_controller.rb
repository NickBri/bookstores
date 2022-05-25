class BookStoresController < ApplicationController
  before_action :set_book_store, only: %i[ show edit update destroy ]

  # GET /book_stores or /book_stores.json
  def index
    @book_stores = BookStore.all
  end

  # GET /book_stores/1 or /book_stores/1.json
  def show
  end

  # GET /book_stores/new
  def new
    @book_store = BookStore.new
  end

  # GET /book_stores/1/edit
  def edit
  end

  # POST /book_stores or /book_stores.json
  def create
    @book_store = BookStore.new(book_store_params)

    respond_to do |format|
      if @book_store.save
        format.html { redirect_to book_store_url(@book_store), notice: "Book store was successfully created." }
        format.json { render :show, status: :created, location: @book_store }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_stores/1 or /book_stores/1.json
  def update
    respond_to do |format|
      if @book_store.update(book_store_params)
        format.html { redirect_to book_store_url(@book_store), notice: "Book store was successfully updated." }
        format.json { render :show, status: :ok, location: @book_store }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_stores/1 or /book_stores/1.json
  def destroy
    @book_store.destroy

    respond_to do |format|
      format.html { redirect_to book_stores_url, notice: "Book store was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_store
      @book_store = BookStore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_store_params
      params.require(:book_store).permit(:name)
    end
end
