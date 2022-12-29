class ArticlesController < ApplicationController
    def index #if go to index route
        articles= Article.recent
        render json: serializer.new(articles),  status: :ok #display message
    end
    def serializer
        ArticleSerializer
    end
end
