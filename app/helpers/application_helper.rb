module ApplicationHelper
  def fullTitle (page_title = ' ')
    baseTitle = "Rails Sample App"
    if page_title.empty?
      baseTitle
    else
      page_title +" | "+baseTitle
    end
  end
end
