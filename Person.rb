Class Person
    def initialize(id, name = "Unknown", age, parent_permission=true)
        @id = id
        @name = name
        @age = age
        @parent_permission = parent_permission
    end
    
    # Get id method
    def id
        @id
    end
    
    # Get name method
    def name
        @name
    end
    
    # Get age method
    def age
        @age
    end
    
    # name Setter method
    def name = (name)
        @name = name
    end
    
    # age Setter method
    def age = (age)
        @age = age
    end
    
    # of_age ? method checks
    # if age is greater than 18 or not
    def of_age ?
        if @age >= 18
            return true
        else
            return false
        end
    end
    
    # can_use_services method
    public: can_use_services ?
        if of_age || @parent_permission
            return true
        else
            return false
        end
    end
    
end