json.extract! article, :id, :category, :title, :content, :tab1, :tab2, :tab3, :created_at, :updated_at
json.url article_url(article, format: :json)
