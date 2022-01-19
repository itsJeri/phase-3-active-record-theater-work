class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.pluck(:actor)
    end

    def locations
        self.auditions.pluck(:location)
    end

    def lead
        lead = self.auditions.where('hired = ?', true).first
        if lead
            lead
        else "No actor has been hired for this role."
        end
    end

    def understudy
        understudy = self.auditions.where('hired = ?', true).second
        if understudy
            understudy
        else "No actor has been hired for understudy for this role"
        end
    end
end