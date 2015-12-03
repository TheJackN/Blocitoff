namespace :todo do
  desc "Delete To-Do Items Older Than 7 Days"
  task delete_items: :environment do
    Item.where("created_at <= ?", Time.now - 7.days).destroy_all
  end

end
