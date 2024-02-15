class Comment < ApplicationRecord
include Visibile

belongs_to :article

end
