class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_id, only: [:show, :edit, :update, :comments, :add_comment]

  @comment = DescriptionBook
  def index
    @book = Book.all.includes(:description_books)
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to @book
    else
      render :edit
    end
  end

  def comments
  #   @comment = DescriptionBook.where("book_id = ?" )
  #   agregar una migraciòn con el campo DescriptionBook, relacion!!
  end

  def add_comment
    if DescriptionBook.new(description_params).save
      redirect_to @book
    else
      render :comments
    end
  end

  def set_id
    @book = Book.find(params[:id])
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
    #no me deja mostrar en pantalla los libros si no tienen comentarios
  end
  private
  def description_params
    params.require(:description_book).permit(:comments, :book_id)
  end
end
