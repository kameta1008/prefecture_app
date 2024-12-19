Rails.application.routes.draw do
  root "prefectures#quiz"
  post "check", to: "prefectures#check"
end
