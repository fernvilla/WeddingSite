module ApplicationHelper
  def full_title(page_title)
    base_title = "Ariana and Fernando's Wedding - June 26, 2015"

    if page_title.empty?
        base_title
    else
        "#{base_title} | #{page_title}"
    end
  end
end
