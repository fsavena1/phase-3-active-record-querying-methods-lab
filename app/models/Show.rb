class Show < ActiveRecord::Base

    def self.highest_rating
        puts self.maximum(:rating)
        self.maximum(:rating)
        
    end

    def self.most_popular_show
        puts  self.where("rating = ?", self.highest_rating).first
       self.where("rating = ?", self.highest_rating).first
    end

    def self.lowest_rating
        Show.minimum(:rating)
    end

    def self.least_popular_show
        self.where("rating = ?", self.lowest_rating).first
    end

    def self.ratings_sum
        puts self.sum(:rating)
        self.sum(:rating)
    end


    def self.popular_shows
        Show.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        puts Show.order(:name)
        Show.order(:name)
    end

end
