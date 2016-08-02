class PagesController < ApplicationController

  def get_information
    @title = 'about me (brake sound)'
    render 'about.html'
  end

  def get_help
    @title = 'help!?'
    render :help
  end

  def contact
    @title = 'call me...'
  end

  def happy
    @title = "because i'm happy..."
  end

end
