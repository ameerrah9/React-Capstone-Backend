# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

User.create(
        firstname: "Jenn",
        lastname: "Smith",
        location: "California",
        username: "jnth",
        email: "jsmith@mail.com",
        img_src: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Donald_Glover_TIFF_2015.jpg/440px-Donald_Glover_TIFF_2015.jpg",
        password: "1234"
    )

User.create(
    firstname: "Amy",
    lastname: "Pope",
    location: "New York",
    username: "apope",
    email: "apope@mail.com",
    img_src: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Donald_Glover_TIFF_2015.jpg/440px-Donald_Glover_TIFF_2015.jpg",
    password: "1234"
)

User.create(
    firstname: "Nia",
    lastname: "Long",
    location: "New York",
    username: "nial",
    email: "nialong@mail.com",
    img_src: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Donald_Glover_TIFF_2015.jpg/440px-Donald_Glover_TIFF_2015.jpg",
    password: "1234"
)

User.create(
    firstname: "Tom",
    lastname: "Martin",
    location: "New Jersey",
    username: "tmartin",
    email: "tmartin@mail.com",
    img_src: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Beyonc%C3%A9_at_The_Lion_King_European_Premiere_2019.png/440px-Beyonc%C3%A9_at_The_Lion_King_European_Premiere_2019.png",
    password: "1234"
)