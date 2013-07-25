class Tour < ActiveRecord::Base

  validates_presence_of :depature_date, :days, :about, :available, :pilgrim_type

  def self.search(page,tour_id)
    paginate :per_page => 20, :page => page,
             :conditions => ["tour_id =  #{tour_id}"]               
  end

  def self.getAllAvailableTours(pilgrim_type, month)

    availability = Tour.joins("INNER JOIN users ON tours.tour_id = users.id").
                    select('tours.*, users.id as tour_id, users.name as tour_name,
                            users.address as tour_address, users.city as tour_city,
                            users.tel as tour_tel, users.country as tour_country, 
                            users.mobile as tour_mobile, users.email_id as tour_email_id ')
                    # where("users.verified_tour = '1' and tours.status = '1' and
                    #        tours.pilgrim_type = '#{pilgrim_type}' and
                    #        month(depature_date) = #{month}   ")
    return availability

  end


end
