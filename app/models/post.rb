class Post < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true
    
   validates :title, presence: true, length: { minimum: 5}
   validates :description, length: { maximum: 64 }
   validates :user_id, presence: true
end
