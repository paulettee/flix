# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create!([
  {
    title: 'Avengers: Endgame',
    description:
    %{
      After the devastating events of Avengers: Infinity War, the universe
      is in ruins. With the help of remaining allies, the Avengers assemble
      once more in order to undo Thanos' actions and restore order to the universe.
    }.squish,
    released_on: "2019-04-26",
    rating: 'PG-13',
    total_gross: 1_223_641_414,
    director: 'Anthony Russo',
    duration: '181 min'
  },
  {
    title: 'Captain Marvel',
    description:
    %{
      Carol Danvers becomes one of the universe's most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.
    }.squish,
    released_on: "2019-03-08",
    rating: 'PG-13',
    total_gross: 1_110_662_849,
    director: 'Anna Boden',
    duration: '124 min'
  },
  {
    title: 'Black Panther',
    description:
    %{
      T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.
    }.squish,
    released_on: "2018-02-16",
    rating: 'PG-13',
    total_gross: 1_346_913_161,
    director: 'Ryan Coogler',
    duration: '134 min'
  },
  {
    title: 'Avengers: Infinity War',
    description:
    %{
      The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.
    }.squish,
    released_on: "2018-04-27",
    rating: 'PG-13',
    total_gross: 2_048_359_754,
    director: 'Anthony Russo',
    duration: '149 min'
  },
  {
    title: 'Green Lantern',
    description:
    %{
      Reckless test pilot Hal Jordan is granted an alien ring that bestows him with otherworldly powers that inducts him into an intergalactic police force, the Green Lantern Corps.
    }.squish,
    released_on: "2011-06-17",
    rating: 'PG-13',
    total_gross: 219_851_172,
    director: 'Martin Campbell',
    duration: '114 min'
  },
  {
    title: 'Fantastic Four',
    description:
    %{
      Four young outsiders teleport to an alternate and dangerous universe which alters their physical form in shocking ways. The four must learn to harness their new abilities and work together to save Earth from a former friend turned enemy.
    }.squish,
    released_on: "2015-08-07",
    rating: 'PG-13',
    total_gross: 168_257_860,
    director: 'Josh Trank',
    duration: '100 min'
  },
  {
    title: 'Iron Man',
    description:
    %{
      When wealthy industrialist Tony Stark is forced to build an
      armored suit after a life-threatening incident, he ultimately
      decides to use its technology to fight against evil.
    }.squish,
    released_on: "2008-05-02",
    rating: 'PG-13',
    total_gross: 585_366_247,
    director: 'Jon Favreau',
    duration: '126 min'
  },
  {
    title: 'Superman',
    description:
    %{
      An alien orphan is sent from his dying planet to Earth, where
      he grows up to become his adoptive home's first and greatest
      super-hero.
    }.squish,
    released_on: "1978-12-15",
    rating: 'PG',
    total_gross: 300_451_603,
    director: 'Richard Donner',
    duration: '143 min'
  },
  {
    title: 'Spider-Man',
    description:
    %{
      When bitten by a genetically modified spider, a nerdy, shy, and
      awkward high school student gains spider-like abilities that he
      eventually must use to fight evil as a superhero after tragedy
      befalls his family.
    }.squish,
    released_on: "2002-05-03",
    rating: 'PG-13',
    total_gross: 825_025_036,
    director: 'Sam Raimi',
    duration: '121 min'
  },
  {
    title: 'Batman',
    description:
    %{
      The Dark Knight of Gotham City begins his war on crime with his
      first major enemy being the clownishly homicidal Joker.
    }.squish,
    released_on: "1989-06-23",
    rating: 'PG-13',
    total_gross: 411_348_924,
    director: 'Tim Burton',
    duration: "126 min"
  },
  {
    title: "Catwoman",
    description:
    %{
      Patience Philips seems destined to spend her life apologizing for taking up space. Despite her artistic ability she has a more than respectable career as a graphic designer.
    }.squish,
    released_on: "2004-07-23",
    rating: "PG-13",
    total_gross: 82_102_379,
    director: "Jean-Christophe 'Pitof' Comar",
    duration: "101 min"
  },
  {
    title: "Wonder Woman",
    description:
    %{
      When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.
    }.squish,
    released_on: "2017-06-02",
    rating: "PG-13",
    total_gross: 821_847_012,
    director: "Patty Jenkins",
    duration: "141 min"
  },
  {
    title: "Minions: The Rise of Guru",
    description:
    %{
      In the heart of the 1970s, amidst a flurry of feathered hair and flared jeans, Gru (Steve Carell) is growing up in the suburbs. A fanboy of a supervillain supergroup known as the
      Vicious 6, Gru hatches a plan to become evil enough to join them. Luckily, he gets some mayhem-making back-up from his loyal followers, the Minions.
     }.squish,
    released_on: "2022-06-01",
    rating: "PG",
    total_gross: 913_199_540,
    director: "Kyle Balda",
    duration: "87 min"
  },
  {
    title: "DC League of Super-Pets",
    description:
    %{
      When the Justice League are captured by Lex Luthor, Superman's dog, Krypto, forms a team of shelter-pets who were given super-powers: A hound named Ace, who becomes super-strong,
      a pig named PB, who can grow to giant-size, a turtle named Merton, who becomes super-fast, and a squirrel named Chip, who gains electric-powers.
     }.squish,
    released_on: "2022-12-29",
    rating: "PG",
    total_gross: 177_560_000,
    director: "Jared Stern",
    duration: "105 min"
  },
  {
  title: "Aquaman",
  description:
  %{
   Born upon the shores of the surface world, Arthur Curry (Jason Momoa) discovers that he is only half human, with the other half of his blood being of Atlanteean descent,
   thus making him the rightful heir to the throne of the undersea kingdom of Atlantis. However, Arthur learns that Atlantis is being ruled by his malicious half-brother
   Orm (Patrick Wilson), who seeks to unite the seven underwater kingdoms and wage war upon the surface. With aid from Nuidis Vulko (Willem Dafoe) and the gorgeous Mera
   (Amber Heard), Arthur must discover the full potential of his true destiny and become Aquaman in order to save Atlantis and the surface from Orm's evil plot.
  },
  released_on: "2018-12-21",
  rating: "PG-13",
  total_gross: 1_148_528_393,
  director: "James Wan",
  duration: "143 min"
}
])

Genre.create!([
              {name: "Action"},
              {name: "Comedy"},
              {name: "Drama"},
              {name: "Animation"},
              {name: "Thriller"},
              {name: "Fantasy"},
              {name: "Adventure"},
              {name: "Romance"},
              {name: "Documentary"},
              {name: "Sci-fi"}
              ])

[
  ["Avengers: Endgame", "avengers-end-game.png"],
  ["Captain Marvel", "captain-marvel.png"],
  ["Black Panther", "black-panther.png"],
  ["Avengers: Infinity War", "avengers-infinity-war.png"],
  ["Green Lantern", "green-lantern.png"],
  ["Fantastic Four", "fantastic-four.png"],
  ["Iron Man", "ironman.png"],
  ["Superman", "superman.png"],
  ["Spider-Man", "spiderman.png"],
  ["Batman", "batman.png"],
  ["Catwoman", "catwoman.png"],
  ["Wonder Woman", "wonder-woman.png"]
].each do |movie_title, file_name|
  movie = movie.find_by!(title: "#{movie_title}")
  file = File.open(Rails.root.join("app/assets/images/#{file_name}"))
  movie.main_image.attach(io: file, filename: file_name })
end
