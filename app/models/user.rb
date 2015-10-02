class User
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :provider, :type => String, :index => true, :uniq => {:scope => [:uid]}
  field :uid, :type => String, :index => true
  field :name, :type => String, :index => true
  field :image, :type => String
  
  has_many :lists
      
  def self.from_omniauth(auth)
    u = where("provider" => auth["provider"], "uid" => auth["uid"]).first_or_create
    #update some attributes that are likely to change for a user over time
    u.name = auth["info"]["name"]
    u.image = auth["info"]["image"]
    u.save
    u
  end
  
  def has_image?
    !image.empty?
  end
  
  def profile_image_path
    has_image? ? image : 'generic-avatar.png'
  end

end
