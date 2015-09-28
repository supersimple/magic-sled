class User
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :provider, :type => String, :index => true, :uniq => {:scope => [:uid, :name]}
  field :uid, :type => String, :index => true
  field :name, :type => String, :index => true
  
  has_many :lists
      
  def self.from_omniauth(auth)
    # u = where(auth.slice("provider", "uid")).first
    u = where("provider" => auth["provider"], "uid" => auth["uid"], "name" => auth["info"]["name"]).first_or_create
  end
    
end
