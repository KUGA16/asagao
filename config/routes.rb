Rails.application.routes.draw do
  # top
  root 'top#index'
  get 'about' => 'top#about', as: 'about'
  # lesson #{}を使用する際は""
  1.upto(18) do |n|
    get "lesson/step#{n}/(:name)" => "lesson#step#{n}"
  end
end
