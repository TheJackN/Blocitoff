module ApplicationHelper
  def time_left(item)
    time_limit = item.created_at + 7.days
    start_time = Time.now
    distance_of_time_in_words(start_time, time_limit)
  end
end
