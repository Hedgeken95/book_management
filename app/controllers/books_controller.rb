class BooksController < ApplicationController
  def index
    @categorys = Category.all
    @book = Book.new
    @category = Category.find(params[:category_id])
  end

  def create
    @category = Category.find(params[:category_id])
    @book = @category.books.new(book_params)
    if @book.save
      redirect_to category_books_path(@category)
    else
      render :index
    end
  end

  private

  def book_params
    params.require(:book).permit(:content).merge(user_id: current_user.id)
  end
end
