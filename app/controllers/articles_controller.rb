class ArticlesController < ApplicationController
  # GET /articles
  def index
    articles = Article.order(published_at: :desc)
    render json: articles.as_json(except: [:created_at, :updated_at])
  end

  # GET /articles/<id>
  def show
    article = Article.find_by(id: params[:id])
    if article
      render json: article.as_json(except: [:created_at, :updated_at])
    else
      head :not_found
    end
  end

  # POST /articles
  def create
    article = Article.new(article_params)

    if article.save
      render json: article.as_json(except: [:created_at, :updated_at]), status: :created
    else
      render json: article.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articles/<id>
  def update
    head :method_not_allowed
  end

  # DELETE /articles/<id>
  def destroy
    head :method_not_allowed
  end

  # Patch /articles/<id>
  def patch
    head :method_not_allowed
  end

  private
    # Only allow a trusted parameter "white list" through.
    def article_params
      params.permit(:title, :content, :author, :category, :published_at)
    end
end