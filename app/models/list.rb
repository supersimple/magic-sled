class List
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :title, :type => String, :index => true
  field :event_time, :type => Time
  field :uid, :type => String, :index => true
  field :user_id, :type => String, :index => true
  
  belongs_to :user
  has_many :members  
    
end
