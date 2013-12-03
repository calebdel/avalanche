OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1381994048692189', 'a59fa9b6d5217b8848416d5df018aca9' 
end

