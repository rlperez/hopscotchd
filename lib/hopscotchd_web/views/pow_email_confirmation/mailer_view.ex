defmodule HopscotchdWeb.PowEmailConfirmation.MailerView do
  use HopscotchdWeb, :mailer_view

  def subject(:email_confirmation, _assigns), do: "Confirm your email address"
end
