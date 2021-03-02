require 'pry'

class Project
    attr_reader :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        project_array = ProjectBacker.all.collect{|projectbacker| projectbacker.backer if projectbacker.project == self}
        project_array.delete_if{|value| value == nil}
        #binding.pry
    end

    def self.all
        @@all
    end

end