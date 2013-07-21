module ApplicationHelper
  
  def getAllMonthsName

    months = []
    for i in 1..12
      time = Time.parse("01-#{i}-2008")
      months = months <<  [time.strftime("%B"), i]
    end

    return months    
    
  end

end
