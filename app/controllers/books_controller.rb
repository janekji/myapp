class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy, :library]
  before_action :authenticate_user!, expect: [:index, :show]
  
  def index
    @books = Book.all
  end

  def show

  end

  def new
    @book = current_user.books.build
  end

  def edit
  end

  def create
    @book = current_user.books.build(book_params)

    respond_to do |f|
      if @book.save
        f.html {redirect_to @book, notice: "Książka zostałą pomślnie dodana"}
      else
        f.html { render :new }
      end
    end
  end

  def update
    respond_to do |f|
      if @book.update(book_params)
        f.html { redirect_to @book, notice: "Książka zostałą pomyśle zaktualizowana"}
      else
        f.html { render :edit }
      end
    end
  end

  def destroy
    @book.destroy
    respond_to do |f|
      f.html { redirect_to books_url, notice: "Książka została usunięta"}
    end
  end

  def library
    type = params[:type]

    if type == "add"
      current_user.library_additions << @book
      redirect_to library_index_path, notice: "#{@book.title} została dodana do biblioteki"
    elsif type == "remove"
      current_user.library_additions.delete(@book)
      redirect_to root_path, notice: "#{@book.title} została usunięta z biblioteki"
    else
      redirect_to book_path(@book), notice: "Coś poszło nie tak. Sprobuje jeszcze raz"
    end
  end

  private

    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :description, :author, :user_id)
    end

end
