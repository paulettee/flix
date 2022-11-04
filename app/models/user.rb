class User < ApplicationRecord

  before_save :set_username
  before_save :set_email
  before_save :set_slug

  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_movies, through: :favorites, source: :movie

  has_secure_password

  validates :name, :username, presence: true

  validates :email, format: { with: /\S+@\S+/ },
                  uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 10, allow_blank: true }

  validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/i,
    message: "can only contain letters and numbers with no white spaces" },
                        uniqueness: { case_sensitive: false }



  scope :by_name, -> { order(:name) }
  scope :not_admins, -> { by_name.where(admin: false) }


  def gravatar_id
    Digest::MD5::hexdigest(email.downcase)
  end

  def to_param
    slug
  end

private

  def set_slug
    self.slug = username.parameterize
  end

  def set_username
    self.username = username.downcase
  end

  def set_email
    self.email = email.downcase
  end
end
