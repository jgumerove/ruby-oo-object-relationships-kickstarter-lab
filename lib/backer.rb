require 'pry'

class Backer
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backed_array = ProjectBacker.all.collect{|projectbacker| projectbacker.project if projectbacker.backer == self}
        backed_array.delete_if{|value| value == nil}
        #binding.pry
    end

    def self.all
        @@all
    end


end