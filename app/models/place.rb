class Place < ActiveRecord::Base
  belongs_to :user
  self.per_page = 10

  def self.search(search, page)
    paginate :per_page => 5, :page => page,
           :conditions => ['name like ?', "%#{search}%"], :order => 'name'
  end

end
