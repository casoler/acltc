class VisitorCountController < ApplicationController
  @@visitor_count = 0
  def visitor_count
    @@visitor_count += 1
  end
end
