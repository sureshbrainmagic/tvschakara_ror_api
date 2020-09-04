Rails.application.routes.draw do
  #get 'operators/loginChk'
  resources :operators

  post "login_in", to: "operators#loginChk"
  post "getTask", to: "tbl_tr_requirement_dtls#getTodayTaskForOperator"
  post "getTaskCount", to: "tbl_tr_requirement_dtls#todayCount"
  #post 'operators#loginChk'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
