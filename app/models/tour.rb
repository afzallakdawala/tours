class Tour < ActiveRecord::Base

  validates_presence_of :depature_date, :days, :about, :available

  def self.search(page,tour_id)
    paginate :per_page => 5, :page => page,
             :conditions => ["tour_id =  #{tour_id}"]

           
           
  end


end
