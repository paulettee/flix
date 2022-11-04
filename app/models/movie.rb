class Movie < ApplicationRecord

  before_save :set_slug

  has_many :reviews, -> { order(created_at: :desc) }, dependent: :destroy
  has_many :critics, through: :reviews, source: :user

  has_many :favorites, dependent: :destroy
  has_many :fans, through: :favorites, source: :user

  has_many :characterizations, dependent: :destroy
  has_many :genres, through: :characterizations


  RATINGS = %w(G PG PG-13 R NC-17 TV-PG)

  validates :title, presence: true, uniqueness: true

  validates :released_on, :duration, presence: true

  validates :description, length: { minimum: 25 }

  validates :total_gross, numericality: { greater_than_or_equal_to: 0 }

  validates :image_file_name, format: {
    with: /\w+\.(jpg|jpeg|png)\z/i, messege: "must be a JPG or JPEG or PNG image"
  }

  validates :rating, inclusion: { in: RATINGS }


  scope :released, -> { where("released_on < ?", Time.now).order(released_on: :desc) }
  scope :upcoming, -> { where("released_on > ?", Time.now).order(released_on: :asc) }
  scope :recent, -> (max=5){ released.limit(max)}
  scope :hits, -> { released.where(total_gross: 300_000_000..).order(total_gross: :desc) }
  scope :flops, -> { released.where(total_gross: ..225_000_000).order(total_gross: :asc) }
  scope :grossed_less_than, -> (amount){ released.where("total_gross < ?",amount) }
  scope :grossed_greater_than, -> (amount){ released.where("total_gross > ?", amount) }



  def self.recent_movie
    where("created_at <= ?", Time.now).order(created_at: :desc).limit(3)
  end

  def self.recent_hit_movie
    where(total_gross: 300_000_000..).order(total_gross: :desc).
    order(created_at: :desc).limit(3)
  end

  def flop?
    total_gross.blank? || !(cult_classics?) && total_gross < 225_000_000
  end

  def cult_classics?
    reviews.count > 50 && reviews.average(:stars) >= 4
  end

  def average_stars
    reviews.average(:stars) ||  0.0
  end

  def average_stars_as_percent
    (self.average_stars / 5.0) * 100
  end

  def to_param
    slug
  end

private

  def set_slug
    self.slug = title.parameterize
  end


end
