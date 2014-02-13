module ApplicationHelper
  def cut_short(info, length = 10)
    if info.length > length
      "#{info[0..length]}..."
    else
      info
    end
  end
end
