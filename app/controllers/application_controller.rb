class ApplicationController < ActionController::Base
    before_action :authenticate_user!, unless: -> { request.env['PATH_INFO'] == '/'} #unless para nao autenticar o "/"
    protect_from_forgery unless: -> { request.format.json?}
end
