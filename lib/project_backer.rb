class ProjectBacker
    
    attr_reader :project, :backer #belongs to a project and belongs to a backer / establishing relationship
    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

    def self.all
        @@all
    end
end