class Comment < ActiveRecord::Base
  belongs_to :person
  belongs_to :post
  
  log_activities :create
  log_activities :update do |record|
    true
  end
  log_activities :destroy do |record|
    false
  end
  
  def to_s
    message
  end
end