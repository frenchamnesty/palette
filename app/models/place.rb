class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :images
  
  geocoded_by :address
  after_validation :geocode

  validates :name, :length=>{minimum: 3}, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :image, presence: true

  self.per_page = 10

  def self.search(search, page)
    paginate :per_page => 5, :page => page,
           :conditions => ['name like ?', "%#{search}%"], :order => 'name'
  end

end
