class HomeController < ApplicationController

  def index
    
  end

  def search_tours
    render 'search_tours_preview'
  end

  def email
    ActionMailer::Base.mail(:from => "me@example.com", :to => "afzalmlakdawala@gmail.com", :subject => "test", :body => "test").deliver
  end

end
