class Student < ApplicationRecord

  belongs_to :city
  belongs_to :branch
  has_and_belongs_to_many :courses
  has_attached_file :photo, styles: { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "/assets/:style/1.png"
  validates_attachment :photo, :presence => true, :content_type => { :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] }
    # has_attached_file :photo, :styles => { :original => "922x922>", :thumb => "220x220>" }
end
