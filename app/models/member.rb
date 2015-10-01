class Member
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :email, :type => String, :index => true
  field :list_id, :type => String, :index => true
  field :name, :type => String
  field :member_id, :type => String, :index => true
  
  belongs_to :list  
  has_one :member
  
  validates :email, presence: true
  validates_format_of :email, :with => /@/
  
  def assign_receiver(m_id)
    self.member_id = m_id
    self.save
  end
  
  def has_assignment?
    self.member_id.present?
  end
  
  def is_assigned?
    Member.where(member_id: self.id).count > 0
  end
  
  def assignment
    begin
      @assignment = Member.where(id: self.member_id).first
    rescue RethinkDB::RqlNonExistenceError
      return nil
    end
  end
  
  def assigned_to
    @assigned_to = Member.where(member_id: self.id).first
  end
  
end
