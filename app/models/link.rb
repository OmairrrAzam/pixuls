class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100#" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  	has_many :comments
  	validates :title, presence: true, length: {minimum: 5}
	validates :url, presence:true
end
