class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @packages = Package.where(active: true)
    @articles = Lines::Article.last(3)
  end

  def contact
  end

  def about
  end

  def testimonials
  end
end
