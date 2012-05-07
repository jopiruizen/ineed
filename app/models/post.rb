class Post < ActiveRecord::Base
  # attr_accessible :title, :body
  # belongs_to :user
  has_many :post_responses
   
  def related_posts
    #REMOVE all special characters and punctiation
    #split by spaces and tabs
    #put all the keywords in array
    #loop through array and use each word as a key word for matching
    keys = related_post_keywords
    results = related_post_sql keys
    sql =  results["sql"]
    values = results["values"]
    return  fetch_related_post sql, values
  end
  
  private
  def related_post_keywords 
   pattern = /\W/
   return content.split pattern
  end
  
  private 
  def related_post_sql ( keys )
    sql = ""
    values = "" 
    keys.each do |i|
      if i == "" 
        next
      end
      sql << "lower(content) LIKE lower(?) OR "
      values << "'%#{i}%', "
    end
    sql = sql.slice 0, sql.length - 3
    values = values.slice 0, values.length - 2
    category = related_post_category
    hash = { "sql" =>  "#{get_type_query} #{category} ( #{sql})" , "values" => values }
    
    #puts "SQL: #{hash['sql']} values: #{hash['values']}"
    return  hash
  end
  
  private 
  def get_type_query
    if self.post_type == 0 #this post is need post 
      return "post_type = 1 AND "
    end
    
    return "post_type = 0 AND"
  end
   
  private 
  def fetch_related_post ( sql , values )
    function_str = "Post.where(\"#{sql}\" ,  #{values}   )"
    puts "Function: #{function_str}" 
    posts = eval "#{function_str}"
    return posts
  end 
   
  private 
  def related_post_category
    return "category='#{self.category}'  AND"
  end
  
  
end
