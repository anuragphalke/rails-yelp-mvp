module ApplicationHelper
  def rating_color(rating)
    case rating
    when 1
      "red"   # Rating 1 is red
    when 2..3
      "orange"  # Ratings 2-3 are orange
    when 4
      "yellow"  # Rating 4 is yellow
    when 5
      "green"   # Rating 5 is green
    else
      "grey"    # Default to grey for invalid ratings
    end
  end
end
