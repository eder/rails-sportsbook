# frozen_string_literal: true

class Sport < ApplicationRecord
  has_many :events, dependent: :destroy

  before_save :set_slug, :update_activity

  validates :name, presence: true
  validates :slug, uniqueness: true

  private

  def update_activity
    self.active = events.where(active: true).exists?
  end

  def set_slug
    self.slug = name.parameterize
  end
end
