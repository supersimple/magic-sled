class List
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :title, :type => String, :index => true
  field :event_time, :type => Time
  field :user_id, :type => String, :index => true
  field :description, :type => Text
  
  belongs_to :user
  has_many :members
  
  validates :title, presence: true
    
  def shuffle_list
    shuffled = members.shuffle #a shuffled list of members
    shifted = shuffled.rotate #the shuffled list offset by 1 to create giver-receiver pairs
    #match the lists to each other and save the receivers
    pairs = (0...shuffled.count).map do |i|    
      current_pair = [shuffled[i], shifted[i]]
      
      shuffled[i].member_id = shifted[i].id
      shuffled[i].save
      
      return current_pair
    end
  end
  
  def is_expired?
    event_time <= Time.now
  end
  
  def summary(trunc: false)
    (title + ' - ' + '<em>'+(trunc ? description.truncate(trunc.to_i) : description)+'</em>').html_safe
  end
  
end
