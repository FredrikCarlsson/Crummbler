class PagesController < ApplicationController
  def about
  end

  def welcome
  	@post = Post.all
  end
end
