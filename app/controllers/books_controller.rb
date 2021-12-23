class BooksController < InheritedResources::Base

  private

    def book_params
      params.require(:book).permit(:title, :description, :author, :user_id)
    end

end
