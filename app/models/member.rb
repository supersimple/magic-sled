class Member
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :email, :type => String, :index => true, :uniq => true
  field :name, :type => String
  
  validates :email, uniqueness: true

end
