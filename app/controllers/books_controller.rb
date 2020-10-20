class BooksController < ApplicationController
  def index
    @category = Category.all
  end
end
