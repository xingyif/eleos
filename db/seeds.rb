require 'devise/encryptor'

case Rails.env
  when "development"
    tour = User.create!(
      username: "yifan",
      name: "Yifan Xing",
      first_name: "Yifan",
      last_name: "Xing",
      site_admin: true,
    )

    tour.encrypted_password = Devise::Encryptor.digest(tour.class, "password")
    tour.save!

  when "production"
    tour = User.create!(
      username: "yif",
      name: "Yifan Xing",
      first_name: "Yifan",
      last_name: "Xing",
      nickname: "yifan",
      site_admin: true,
    )
end
