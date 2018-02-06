class HomeController < ApplicationController
  def index
  	@tags = Tag.all
  	@works = Work.all
  end
end
