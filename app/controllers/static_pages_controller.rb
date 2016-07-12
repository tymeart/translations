class StaticPagesController < ApplicationController
  def home
    @content_producers = ContentProducer.all
  end
end
