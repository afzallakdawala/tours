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

end
