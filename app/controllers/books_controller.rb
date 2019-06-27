class BooksController < ApplicationController
  def new
    @book = Book.new
    @libraries = Library.all
    render :new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      flash[:notice] = "Successfully created a thing"
      redirect_to book_path(@book) # "/books/#{id}"
    else
      flash.now[:error] = @book.errors.full_messages
      @libraries = Library.all
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
    render :show
  end

  private
  def book_params
    params.require(:book).permit(:name, :library_id)
  end
end