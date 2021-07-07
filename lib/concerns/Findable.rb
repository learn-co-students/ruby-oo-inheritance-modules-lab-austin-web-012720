module Findable
    module ClassMethods
        def find_by_name(name)
            self.all.find do |artist|
                artist.name == name
            end
        end
    end

    module InstanceMethods

    end
end