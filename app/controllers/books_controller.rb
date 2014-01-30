class BooksController < ApplicationController

	def index
		@books = Book.all
	end
	def new
		@books = Book.new
	end
	def create
		@books = Book.new(book_param)

		if @books.save
			redirect_to action: 'index'
			flash[:notice] = 'Book was added succesfully!'
		else
			flash[:notice] = 'Missing information'
			render action: 'new'
		end
	end

	private

	def book_param
		params.require(:book).permit(:title,:author,:publication_year,:ISBN,:genre)
	end

end
