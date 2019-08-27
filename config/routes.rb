Rails.application.routes.draw do
  devise_scope :user do
    # get "/sign_in" => "devise/sessions#new" # login/sign_inへのカスタムパス
    get "users/sign_up" => "devise/registrations#index" # , as: "new_user_registration" # sign_up/registrationへのカスタムパス
    get "users/sign_up/registration" => "devise/registrations#new" # メールアドレスの会員情報入力画面
    get "users/sign_up/facebook" => "devise/registrations#new_facebook" # facebookの会員情報入力画面
    get "users/sign_up/google" => "devise/registrations#new_google" # googleによる会員情報入力画面
    get "users/sign_up/sms_confirmation" => "devise/registrations#sms_confirmation" # 電話番号認証ページ
    get "users/sign_up/address" => "devise/registrations#address" # 発送元・お届け先住所入力ページ
    get "users/sign_up/credit_card" => "card#new" # 支払い方法入力ページ
    get "users/sign_up/done" => "devise/registrations#done" # 会員登録完了ページ
    get "users/identification" =>  "users#identification" # 本人情報の登録
  end
  devise_for :users
  get "users/log_out" => "users#destroy"
  get 'users' => 'users#show'

  root 'items#index'
  resources :items, only: [:index, :show, :edit, :update] do
    resources :deals, only: [:new, :create]
  end
  resources :item_registration_forms, only: [:new, :create]

  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end
end
