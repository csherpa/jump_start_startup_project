# Developer.create!(
#     first_name: "Lisa",
#     last_name: "Chan",
#     email: "x1lisxxxachan@gmail.com",
#     password: "123456",
#     description: "Full Stack Developer with seven years of expertise in digital advertising media and analytics",
#     city: "New York",
#     state: "NY"
# )

# Developer.create!(
#     first_name: "Mark",
#     last_name: "Ilco",
#     email: "ma2xxxrk@gmail.com",
#     password: "123456",
#     description: "Full Stack Software Engineer",
#     city: "New York",
#     state: "NY"
# )

# Developer.create!(
#     first_name: "Mariia",
#     last_name: "Tkachenko",
#     email: "marixxx3ia@gmail.com",
#     password: "123456",
#     description: "Student of NYCDA I turn imagination into code!",
#     city: "New York",
#     state: "NY"
# )

# Developer.create!(
#     first_name: "Chhoti",
#     last_name: "Sherpa",
#     email: "chh4xxoti@gmail.com",
#     password: "123456",
#     description: "Full Stack Developer",
#     city: "New York",
#     state: "NY"
# )

# Developer.create!(
#     first_name: "Jazmine",
#     last_name: "Chung",
#     email: "chunexxgzilla@gmail.com",
#     password: "123456",
#     description: "Cake Dealer",
#     city: "New York",
#     state: "NY"
# )




# Employer.create!(
#     company_name: "Warby Parker",
#     first_name: "Warby",
#     last_name: "Parker",
#     email: "wpassxxrker@warbyparker.com",
#     password: "123456",
#     city: "New York",
#     state: "NY"
# )

# Employer.create!(
#     company_name: "Middle School 2",
#     first_name: "Dan",
#     last_name: "Harmon",
#     email: "dharxxmon@warbyparker.com",
#     password: "123456",
#     city: "LA",
#     state: "CA"
# )

# Employer.create!(
#     company_name: "Granma Honey",
#     first_name: "Benny",
#     last_name: "Nanny",
#     email: "dhxxoneyn@warbyparker.com",
#     password: "123456",
#     city: "Brooklyn",
#     state: "NY"
# )

# Employer.create!(
#     company_name: "Gymnazium 11 Chernyakhiv",
#     first_name: "Tetiana",
#     last_name: "Sakhnenko",
#     email: "Texxtiana@mail.com",
#     password: "123456",
#     city: "Chernyakhiv",
#     state: "Zhytomyr"
# )

Project.create!(
    employer_id: 1,
    project_status: "open",
    project_name: "Junior Front-end Developer",
    project_description: "Warby Parker is on the lookout for a thoughtful Front-end Developer to join our 60+ person Technology team and help engineer our consumer-facing site into the best possible brand experience it can be. As a member of this cross-functional team, you'll work alongside our Product Strategy and Experience Design teams, plus graphic designers and other developers, to build high-quality webpages for our customers to shop our latest and greatest eyeglasses and sunglasses. (You can peep one of our favorite past collection landing pages here ( https://www.warbyparker.com/tyler-oakley ).) ",
    plattform_mobile: true,
    plattform_desktop: true,
    platform_tablet: true,
    assets_text: true,
    assets_images: true,
    due_date_one_month: true,
    pages_landing_pages: true
)
