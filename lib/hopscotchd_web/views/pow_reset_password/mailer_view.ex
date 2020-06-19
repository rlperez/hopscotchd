defmodule HopscotchdWeb.PowResetPassword.MailerView do
  use HopscotchdWeb, :mailer_view

  def subject(:reset_password, _assigns), do: "Reset password link"
end
