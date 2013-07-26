module ApplicationHelper
  
  def getAllMonthsName

    months = []
    for i in 1..12
      time = Time.parse("01-#{i}-2008")
      months = months <<  [time.strftime("%B"), i]
    end

    return months    
    
  end

  def getAllToursType
    tours = []    
    tours = tours << ["Haj",1]
    tours = tours << ["Umrah",2]
    tours = tours << ["Ziyarat",3]

    return tours
  end

  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end  

end
