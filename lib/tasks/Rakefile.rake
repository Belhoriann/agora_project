task :reset_comments_counter => :environment do
  Article.find_each do |article| 
    Article.reset_counters(article.id, :comments)
  end
end