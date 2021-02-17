# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

    
#Teams
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/0/02/Washington_Wizards_logo.svg",
    city: "Washington",
    name: "Wizards",
    wins: 7,
    losses: 17,
    conference_rank: 7,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/c/c4/Charlotte_Hornets_%282014%29.svg",
    city: "Charlotte",
    name: "Hornets",
    wins: 13,
    losses: 14,
    conference_rank: 3,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/2/24/Atlanta_Hawks_logo.svg",
    city: "Atlanta",
    name: "Hawks",
    wins: 11,
    losses: 15,
    conference_rank: 5,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/f/fb/Miami_Heat_logo.svg",
    city: "Miami",
    name: "Heat",
    wins: 11,
    losses: 15,
    conference_rank: 5,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/1/10/Orlando_Magic_logo.svg",
    city: "Orlando",
    name: "Magic",
    wins: 10,
    losses: 17,
    conference_rank: 6,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/2/25/New_York_Knicks_logo.svg",
    city: "New York",
    name: "Knicks",
    wins: 13,
    losses: 15,
    conference_rank: 4,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/0/0e/Philadelphia_76ers_logo.svg",
    city: "Philadelphia",
    name: "76ers",
    wins: 18,
    losses: 9,
    conference_rank: 1,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/commons/4/44/Brooklyn_Nets_newlogo.svg",
    city: "Brooklyn",
    name: "Nets",
    wins: 16,
    losses: 12,
    conference_rank: 2,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/8/8f/Boston_Celtics.svg",
    city: "Boston",
    name: "Celtics",
    wins: 13,
    losses: 13,
    conference_rank: 3,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/3/36/Toronto_Raptors_logo.svg",
    city: "Toronto",
    name: "Raptors",
    wins: 12,
    losses: 14,
    conference_rank: 4,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/6/67/Chicago_Bulls_logo.svg",
    city: "Chicago",
    name: "Bulls",
    wins: 10,
    losses: 15,
    conference_rank: 6,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/4/4b/Cleveland_Cavaliers_logo.svg",
    city: "Cleveland",
    name: "Cavaliers",
    wins: 10,
    losses: 17,
    conference_rank: 7,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/1/1b/Indiana_Pacers.svg",
    city: "Indiana",
    name: "Pacers",
    wins: 14,
    losses: 13,
    conference_rank: 2,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/commons/7/7c/Pistons_logo17.svg",
    city: "Detroit",
    name: "Pistons",
    wins: 7,
    losses: 19,
    conference_rank: 11,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/4/4a/Milwaukee_Bucks_logo.svg",
    city: "Milwaukee",
    name: "Bucks",
    wins: 16,
    losses: 10,
    conference_rank: 1,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/c/c2/Minnesota_Timberwolves_logo.svg",
    city: "Minnesota",
    name: "Timberwolves",
    wins: 6,
    losses: 20,
    conference_rank: 11,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/0/04/Utah_Jazz_logo_%282016%29.svg",
    city: "Utah",
    name: "Jazz",
    wins: 22,
    losses: 5,
    conference_rank: 1,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/5/5d/Oklahoma_City_Thunder.svg",
    city: "Oklahoma City",
    name: "Thunder",
    wins: 10,
    losses: 15,
    conference_rank: 7,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/2/21/Portland_Trail_Blazers_logo.svg",
    city: "Portland",
    name: "Trail Blazers",
    wins: 16,
    losses: 10,
    conference_rank: 3,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/7/76/Denver_Nuggets.svg",
    city: "Denver",
    name: "Nuggets",
    wins: 14,
    losses: 11,
    conference_rank: 4,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/f/f1/Memphis_Grizzlies.svg",
    city: "Memphis",
    name: "Grizzlies",
    wins: 10,
    losses: 11,
    conference_rank: 5,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/2/28/Houston_Rockets.svg",
    city: "Houston",
    name: "Rockets",
    wins: 11,
    losses: 15,
    conference_rank: 6,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/0/0d/New_Orleans_Pelicans_logo.svg",
    city: "New Orleans",
    name: "Pelicans",
    wins: 11,
    losses: 15,
    conference_rank: 7,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/a/a2/San_Antonio_Spurs.svg",
    city: "San Antonio",
    name: "Spurs",
    wins: 16,
    losses: 11,
    conference_rank: 3,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/9/97/Dallas_Mavericks_logo.svg",
    city: "Dallas",
    name: "Mavericks",
    wins: 13,
    losses: 15,
    conference_rank: 6,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/0/01/Golden_State_Warriors_logo.svg",
    city: "Golden State",
    name: "Warriors",
    wins: 14,
    losses: 13,
    conference_rank: 4,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/commons/3/3c/Los_Angeles_Lakers_logo.svg",
    city: "Los Angeles",
    name: "Lakers",
    wins: 21,
    losses: 6,
    conference_rank: 1,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/b/bb/Los_Angeles_Clippers_%282015%29.svg",
    city: "Los Angeles",
    name: "Clippers",
    wins: 19,
    losses: 8,
    conference_rank: 2,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/d/dc/Phoenix_Suns_logo.svg",
    city: "Phoenix",
    name: "Suns",
    wins: 17,
    losses: 9,
    conference_rank: 2,
)
Team.create(
    logo_url: "https://upload.wikimedia.org/wikipedia/en/c/c7/SacramentoKings.svg",
    city: "Sacramento",
    name: "Kings",
    wins: 12,
    losses: 13,
    conference_rank: 5,
)
# Team.create(logo_url: "https://upload.wikimedia.org/wikipedia/en/c/c7/SacramentoKings.svg", city: "Sacramento", name: "Kings", wins: 12, losses: 13, conference_rank: 5)
# user_id: User.all.sample.id,

#Favorites
10.times do
    Favorite.create(user_id: User.all.sample.id, team_id: Team.all.sample.id)
 end