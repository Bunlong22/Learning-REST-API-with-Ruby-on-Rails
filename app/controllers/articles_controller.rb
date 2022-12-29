class ArticlesController < ApplicationController
    include Paginable
    def index #if go to index route
        # articles= Article.recent
        # render json: serializer.new(articles),  status: :ok #display message
        paginated = paginate(Article.recent)
        render_collection(paginated) 
    end
    #find id
    def show 
        article= Article.find(params[:id])
        render json: serializer.map(article)
    end

    def serializer
    ArticleSerializer
    end
 
end 