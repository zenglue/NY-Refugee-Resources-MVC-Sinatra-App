class User < ActiveRecord::Base
  has_many :user_experiences
  has_many :organizations, through: :user_experiances

  def slug
    self.username.strip.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
    self.all.find{|user| user.slug == slug}
  end
end
