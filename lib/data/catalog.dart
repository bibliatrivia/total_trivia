class TriviaCategory {
  final String title, icon;
  final List<String> subcategories;
  const TriviaCategory(this.title, this.icon, this.subcategories);
}

const difficulties = ['Easy', 'Medium', 'Hard'];

const indiaStates = [
  'Andhra Pradesh', 'Arunachal Pradesh', 'Assam', 'Bihar', 'Chhattisgarh',
  'Goa', 'Gujarat', 'Haryana', 'Himachal Pradesh', 'Jharkhand',
  'Karnataka', 'Kerala', 'Madhya Pradesh', 'Maharashtra', 'Manipur',
  'Meghalaya', 'Mizoram', 'Nagaland', 'Odisha', 'Punjab', 'Rajasthan',
  'Sikkim', 'Tamil Nadu', 'Telangana', 'Tripura', 'Uttar Pradesh',
  'Uttarakhand', 'West Bengal',
];

const indiaUnionTerritories = [
  'Andaman and Nicobar Islands', 'Chandigarh',
  'Dadra and Nagar Haveli and Daman and Diu', 'Delhi',
  'Jammu and Kashmir', 'Ladakh', 'Lakshadweep', 'Puducherry',
];

const harryPotterBooks = [
  'Book 1: Sorcerer’s Stone', 'Book 2: Chamber of Secrets',
  'Book 3: Prisoner of Azkaban', 'Book 4: Goblet of Fire',
  'Book 5: Order of the Phoenix', 'Book 6: Half-Blood Prince',
  'Book 7: Deathly Hallows',
];
const harryPotterMovies = [
  'Film 1: Sorcerer’s Stone', 'Film 2: Chamber of Secrets',
  'Film 3: Prisoner of Azkaban', 'Film 4: Goblet of Fire',
  'Film 5: Order of the Phoenix', 'Film 6: Half-Blood Prince',
  'Film 7: Deathly Hallows Part 1', 'Film 8: Deathly Hallows Part 2',
];

const bibleBooks = [
  'Genesis','Exodus','Leviticus','Numbers','Deuteronomy','Joshua','Judges',
  'Ruth','1 Samuel','2 Samuel','1 Kings','2 Kings','1 Chronicles',
  '2 Chronicles','Ezra','Nehemiah','Esther','Job','Psalms','Proverbs',
  'Ecclesiastes','Song of Songs','Isaiah','Jeremiah','Lamentations','Ezekiel',
  'Daniel','Hosea','Joel','Amos','Obadiah','Jonah','Micah','Nahum',
  'Habakkuk','Zephaniah','Haggai','Zechariah','Malachi','Matthew','Mark',
  'Luke','John','Acts','Romans','1 Corinthians','2 Corinthians','Galatians',
  'Ephesians','Philippians','Colossians','1 Thessalonians','2 Thessalonians',
  '1 Timothy','2 Timothy','Titus','Philemon','Hebrews','James','1 Peter',
  '2 Peter','1 John','2 John','3 John','Jude','Revelation',
];

const categories = <TriviaCategory>[
  TriviaCategory('Bible', '📖', bibleBooks),
  TriviaCategory('Sports', '🏆', [
    'NFL Football','NCAA Football','NBA Basketball','NCAA Men’s Basketball',
    'NCAA Women’s Basketball','WNBA Basketball','Baseball','Hockey','Olympics',
    'Men’s Tennis','Women’s Tennis','Major League Soccer','Champions League',
    'English Premier League','La Liga','Bundesliga','Serie A','Ligue 1','World Cup',
  ]),
  TriviaCategory('Geography', '🌍', ['Capitals','Countries','Flags','Landmarks','Mountains']),
  TriviaCategory('Miscellaneous', '🧩', ['General Trivia']),
  TriviaCategory('History', '🏛️', [
    'US History','World History','War','Presidents','The Constitution',
  ]),
  TriviaCategory('Movies', '🎬', [
    'Actors','Oscars','Action','Marvel','Drama','Comedies',
    'Romance','RomComs','Musicals','Disney',
    ...harryPotterMovies,
  ]),
  TriviaCategory('Music', '🎵', [
    '60s','70s','80s','90s','00s','10s','20s',
  ]),
  TriviaCategory('India', '🇮🇳', [...indiaStates, ...indiaUnionTerritories]),
  TriviaCategory('Holidays', '🎉', [
    'Christmas','Christmas Nativity','Christmas Movies','Christmas Songs','Christmas Carols','Easter','Thanksgiving','Fourth of July',
  ]),
  TriviaCategory('Books', '📚', [
    'Classic Literature','Fiction','Non-Fiction','Franchises','What Book Am I?',
    ...harryPotterBooks,
  ]),
];
