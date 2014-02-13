module PrevNext
  extend ActiveSupport::Concern

  def prev
    self.class.where(["user_id = ? and id < ?", self.user_id,  self.id]).last
  end

  def next
    self.class.where(["user_id = ? and id > ?", self.user_id, self.id]).first
  end
end
