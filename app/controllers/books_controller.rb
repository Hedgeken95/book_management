class BooksController < ApplicationController
  def index
    @categorys = Category.all
    @book = Book.new
    @category = Category.find(params[:category_id])
    @books = @category.books.includes(:user)
  end

  def create
    @categorys = Category.all
    @category = Category.find(params[:category_id])
    @book = @category.books.new(book_params)
    if @book.save
      redirect_to category_books_path(@category)
    else
      @books = @category.books.includes(:user)
      render :index
    end
  end

  def destroy
    category = Category.find(params[:category_id])
    book = category.books.find(params[:id])
    if book.destroy
      redirect_to category_books_path
    end
  end

  
  private

  def book_params
    params.require(:book).permit(:content, :image).merge(user_id: current_user.id)
  end
end
