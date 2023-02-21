class Show < ActiveRecord::Base

  def self.highest_rating
    show = Show.maximum('rating')
    show
  end

  def self.most_popular_show
    most_popular = Show.order('rating': :desc).first
    most_popular
  end  

  def self.lowest_rating
    show = Show.minimum('rating')
    show
  end  

  def self.least_popular_show
    least_popular = Show.order('rating').first
    least_popular
  end  

  def self.ratings_sum
    show = Show.sum('rating')
    show
  end

  def self.popular_shows
    show = Show.where('rating>5')
    show
  end

  def self.shows_by_alphabetical_order
    show = Show.order('name')
    show
  end
  
end