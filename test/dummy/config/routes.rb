Rails.application.routes.draw do
  mount Webpacker::Preact::Engine => "/webpacker-preact"
end
