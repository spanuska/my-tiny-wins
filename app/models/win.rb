class Win < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :image, presence: true
  validates :description, presence: true
  
  def self.filter_by_user_id(id)
    where("user_id = ?", id)
  end
  
  def self.filter_by_user_id_public(id)
    where(public: true).where("user_id = ?", id)
  end

end
