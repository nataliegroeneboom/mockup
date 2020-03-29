class Post < ActiveRecord::Base
    belongs_to :user
    has_many :post_categories 
    has_many :categories, through: :post_categories
    validates :name, :presence => true
    validates :title, :presence => true, :length => { :minimum => 5 }
    validates :user_id, presence: true
end
