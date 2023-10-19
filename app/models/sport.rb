class Sport < ApplicationRecord
  has_many :events, dependent: :destroy

  before_save :update_activity

  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true

  private

  def update_activity
    self.active = events.where(active: true).exists?
  end
end

