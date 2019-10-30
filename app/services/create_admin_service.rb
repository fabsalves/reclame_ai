class CreateAdminService
  def call
    User.find_or_create_by!(email: admin_email) do |user|
      user.password = admin_password
      user.password_confirmation = admin_password
      user.admin!
    end
  end

  private

  def admin_email
    Rails.application.secrets.admin_email
  end

  def admin_password
    Rails.application.secrets.admin_password
  end
end
