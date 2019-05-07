class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def find_other_movies_by_director director
    return [] if director.nil?
    where(director: director)
  end
end
