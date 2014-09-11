class Operation < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>" , :thumb => "100x100>" }, :default_url => "/images/:style/foto.png"
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  belongs_to :area
  validates :name, :presence => true
  validates :description, :presence => true
  validates :machine, :presence => true
  validates :time_stadar, :presence => true

  validates :name, uniqueness: { message: "No se puede Repetir"}
  
   def self.search(search, page)
		where(['upper(name) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 1).order("name")
  end
end
