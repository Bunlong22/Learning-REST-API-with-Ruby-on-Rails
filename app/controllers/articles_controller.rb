class ArticlesController < ApplicationController
    def index #if go to index route
        articles= Article.all
        render json: serializer.new(articles),  status: :ok #display message
     end
    def serializer
    ArticleSerializer
    end
end 