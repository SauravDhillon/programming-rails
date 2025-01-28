# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
ProgrammingRail.create([
  { title: "Ruby", description: "A dynamic, open-source programming language focused on simplicity and productivity.", link: "https://www.ruby-lang.org/" },
  { title: "Python", description: "A versatile language with simple syntax, popular for web development, data science, and more.", link: "https://www.python.org/" },
  { title: "JavaScript", description: "The language of the web, enabling dynamic and interactive web experiences.", link: "https://developer.mozilla.org/en-US/docs/Web/JavaScript" },
  { title: "Go", description: "A statically typed language designed for simplicity, efficiency, and scalability.", link: "https://go.dev/" },
  { title: "Rust", description: "A system programming language focused on safety and performance.", link: "https://www.rust-lang.org/" }
])