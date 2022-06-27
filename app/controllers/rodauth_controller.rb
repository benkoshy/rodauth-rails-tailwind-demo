class RodauthController < ApplicationController
  # used by Rodauth for rendering views, CSRF protection, and running any
  # registered action callbacks and rescue_from handlers
  layout :rodauth_layout

  private

  def rodauth_layout
    case request.path
    when rodauth.login_path,
        rodauth.create_account_path,
        rodauth.verify_account_path,
        rodauth.reset_password_path,
        rodauth.reset_password_request_path,
        rodauth.recovery_codes_path,
        rodauth.email_auth_path,
        rodauth.email_auth_request_path
      "rodauth"
    else
      "application"
    end
  end
end
