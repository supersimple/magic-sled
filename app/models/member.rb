class Member
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :email, :type => String, :index => true
  field :list_uid, :type => String, :index => true
  field :uid, :type => String, :index => true
  field :name, :type => String
  
  belongs_to :list  
    
end
