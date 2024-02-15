module Visibile
    extend ActiveSupport::Concern

    VALIDATE_STATUS = ['public', 'private', 'archived']

    included do 
        validates: status, inclusion: { in: VALIDATE_STATUS}
    end
    
    def archived?
        status === 'archived'
    end
end