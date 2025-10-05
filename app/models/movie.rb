class Movie < ActiveRecord::Base

  ratings=['G','PG-13,PG,R']

  def self.all_ratings
    ratings
  end
  def self.with_ratings(ratings_list)
    return all if ratings_list.nil?
    where(rating: ratings_list)
  end
end
