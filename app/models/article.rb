class Article < ApplicationRecord
    has_many :comments
    
    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}

    VALID_STATUS = ['public', 'private', 'archived']

    validates :status, inclusion: { in: VALID_STATUS }

    def archived?
        status == 'archived'
    end
    
end
