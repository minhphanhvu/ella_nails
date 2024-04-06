# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

case Rails.env
when "development" || "test"
  Friend.destroy_all

  NailService.destroy_all
  NailEmployee.destroy_all

  NailEmployee.create!([
    {
      name: "Elijah"
    },
    {
      name: "Izabella"
    }
  ])

  ServiceCategory.destroy_all

  ServiceCategory.create!([
    {
      name: "Services",
    },
    {
      name: "KID",
    },
    {
      name: "Waxing"
    }
  ])

  services_category = ServiceCategory.find_by_name("Services")
  kid_category = ServiceCategory.find_by_name("KID")
  waxing_category = ServiceCategory.find_by_name("Waxing")

  NailEmployee.all.each do |employee|
    NailService.create!([
      {
        name: "Basic Manicures",
        duration: 20.minutes,
        price: 15.0,
        nail_employee: employee,
        service_category: kid_category
      },
      {
        name: "Basic Pedicures",
        duration: 20.minutes,
        price: 25.0,
        nail_employee: employee,
        service_category: kid_category
      },
      {
        name: "Polish Change hand",
        duration: 15.minutes,
        price: 8.0,
        nail_employee: employee,
        service_category: kid_category
      },
      {
        name: "Polish Change feet",
        duration: 15.minutes,
        price: 11.0,
        nail_employee: employee,
        service_category: kid_category
      },
      {
        name: "Eyebrows",
        duration: 5.minutes,
        price: 12.0,
        nail_employee: employee,
        service_category: waxing_category
      },
      {
        name: "Lip/Chin",
        duration: 5.minutes,
        price: 8.0,
        nail_employee: employee,
        service_category: waxing_category
      },
      {
        name: "Full Face $30+",
        duration: 15.minutes,
        price: 30.0,
        nail_employee: employee,
        service_category: waxing_category
      }
    ])
  end
end
