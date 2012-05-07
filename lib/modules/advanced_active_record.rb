module AdvancedActiveRecord
 
  def validate_fields ( fields , values )
   fields.each do |fld|
      fld_value = values["#{fld}"]
      #puts "Checking field: #{fld} value: #{fld_value}"
      results = self.class.where( "#{fld} = ?" , fld_value ) 
      if  results.length > 0 
       # puts "record exist!!!"
        return false  
      end
    end
    puts "record doesnot exist!"
    return true
  end
 
  def is_new_record ( fields , values )
    query = ""
    qvalues = ""
    fields.each do |fld|
      fld_value = values["#{fld}"]
      qvalues <<  "\"#{fld_value}\","
      query << "#{fld} = ? OR " 
    end
    return check_queries query, qvalues
  end
  
  def is_new ( fields )
    query = ""
    qvalues = ""
    fields.each do |fld|
      fld_value = self["#{fld}"]
      qvalues <<  "\"#{fld_value}\","
      query << "#{fld} = ? OR " 
    end
    return check_queries query, qvalues
  end
  
  private 
  def check_queries ( query, qvalues )
    query = query.slice 0 , query.length - 3
    qvalues = qvalues.slice 0, qvalues.length - 1
    function_str = "self.class.where(\"#{query}\" , #{qvalues})"
    results = eval "#{function_str}" 
    if results.length > 0 
      return false
    end 
    return true
  end

end