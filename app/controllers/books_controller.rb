class BooksController < ApplicationController
	before_action :set_book, only: [:show, :edit, :update]


	def index
		@books = Book.all
	end
	def new
		@books = Book.new
	end

	def show
	end
	
	def edit
	end


	def create
		@books = Book.new(book_param)

		if @books.save
			redirect_to action: 'index'
			flash[:notice] = 'Book was added succesfully!'
		else
			render action: 'new'
		end
	end

	def update
		if @book.update (book_param)
			flash[:notice] = 'Book was successfully updated!'
			redirect_to @book
		else
			render action: 'edit'
		end
	end

	private

	def book_param
		params.require(:book).permit(:title,:author,:publication_year,:ISBN,:genre)
	end

	def set_book
		@book = Book.find(params[:id])
	end

end
