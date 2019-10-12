crumb :root do
  link "Home", root_path
end

crumb :user do |user|
  link user.name , user_path
end

crumb :comment do |coordinate|
  link "#{coordinate.created_at.strftime('%Y/%m/%d')} のコーディネート", user_coordinate_comments_path(current_user)
end

crumb :post do
  link "投稿",  new_user_coordinate_path
end

crumb :profile do
  link "プロフィール設定", edit_user_path
end
