module Findable

    module ClassMethods
        def find_by_name(name)
            self.all.detect do |thing|
                if thing.name == name
                    thing
                end
            end
        end
    end
    
end