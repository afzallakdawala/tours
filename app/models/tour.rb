class Tour < ActiveRecord::Base

  validates_presence_of :depature_date, :days, :about, :available, :pilgrim_type

  def self.search(page,tour_id)
    paginate :per_page => 20, :page => page,
             :conditions => ["tour_id =  #{tour_id}"]               
  end

  def self.getAllAvailableTours(pilgrim_type.to_s, month)
    availability = Tour.joins("INNER JOIN users ON tours.tour_id = users.id").
                    select('tours.*, users.id as user_id').
                    where("users.verified_tour = '1' and tours.status = '1' and
                           tours.pilgrim_type = '#{pilgrim_type}'  ")
    return availability      
    # 
    #                         and
    #                        month(depature_date) = #{month}

    # , users.name as operator_name, users.address
    #                 as operator_address, user.country as operator_country, users.city as operator_city,
    #                 users.tel as operator_tel, users.mobile as operator_mobile, users.email_id as 
    #                 operator_email_id
  end


end
