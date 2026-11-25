import '../../models/question.dart';

final Map<String, Map<String, Map<String, List<Question>>>>
package1Checkpoint3QuestionBanks = {
  'Music': {
    'Name That Tune': {
      'Easy': [
        Question(
          question: 'Which artist recorded “Billie Jean”?',
          answers: [
            'Nirvana',
            'Fleetwood Mac',
            'Michael Jackson',
            'Aretha Franklin',
          ],
          correctAnswer: 2,
          explanation:
              'Michael Jackson is correct. This question concerns Billie Jean.',
        ),
        Question(
          question: 'Which artist recorded “Respect”?',
          answers: ['The Police', 'Aretha Franklin', 'Adele', 'Eagles'],
          correctAnswer: 1,
          explanation:
              'Aretha Franklin is correct. This question concerns Respect.',
        ),
        Question(
          question: 'Which artist recorded “Hotel California”?',
          answers: ['Eagles', 'The Beatles', 'Prince', 'Bruce Springsteen'],
          correctAnswer: 0,
          explanation:
              'Eagles is correct. This question concerns Hotel California.',
        ),
        Question(
          question: 'Which artist recorded “Purple Rain”?',
          answers: [
            'Bob Dylan',
            'Beyonce featuring Jay-Z',
            'Whitney Houston',
            'Prince',
          ],
          correctAnswer: 3,
          explanation: 'Prince is correct. This question concerns Purple Rain.',
        ),
        Question(
          question: 'Which artist recorded “Like a Rolling Stone”?',
          answers: ['Chuck Berry', 'Queen', 'Stevie Wonder', 'Bob Dylan'],
          correctAnswer: 3,
          explanation: 'Bob Dylan is correct. This question concerns Like a Rolling Stone.',
        ),
        Question(
          question: 'Which artist recorded “Bohemian Rhapsody”?',
          answers: ['Queen', 'Dolly Parton', 'ABBA', 'Marvin Gaye'],
          correctAnswer: 0,
          explanation:
              'Queen is correct. This question concerns Bohemian Rhapsody.',
        ),
        Question(
          question: 'Which artist recorded “Dancing Queen”?',
          answers: ['a-ha', 'Fleetwood Mac', 'Nirvana', 'ABBA'],
          correctAnswer: 3,
          explanation: 'ABBA is correct. This question concerns Dancing Queen.',
        ),
        Question(
          question: 'Which artist recorded “Smells Like Teen Spirit”?',
          answers: ['Michael Jackson', 'Nirvana', 'The Police', 'Adele'],
          correctAnswer: 1,
          explanation: 'Nirvana is correct. This question concerns Smells Like Teen Spirit.',
        ),
        Question(
          question: 'Which artist recorded “Rolling in the Deep”?',
          answers: [
            'Adele',
            'Bruce Springsteen',
            'The Beatles',
            'Aretha Franklin',
          ],
          correctAnswer: 0,
          explanation:
              'Adele is correct. This question concerns Rolling in the Deep.',
        ),
        Question(
          question: 'Which artist recorded “Hey Jude”?',
          answers: [
            'Beyonce featuring Jay-Z',
            'The Beatles',
            'Eagles',
            'Whitney Houston',
          ],
          correctAnswer: 1,
          explanation:
              'The Beatles is correct. This question concerns Hey Jude.',
        ),
        Question(
          question: 'Which artist recorded “I Will Always Love You”?',
          answers: [
            'Whitney Houston',
            'Chuck Berry',
            'Stevie Wonder',
            'Prince',
          ],
          correctAnswer: 0,
          explanation: 'Whitney Houston is correct. This question concerns I Will Always Love You.',
        ),
        Question(
          question: 'Which artist recorded “Johnny B. Goode”?',
          answers: ['Bob Dylan', 'Dolly Parton', 'Marvin Gaye', 'Chuck Berry'],
          correctAnswer: 3,
          explanation:
              'Chuck Berry is correct. This question concerns Johnny B. Goode.',
        ),
        Question(
          question: 'Which artist recorded “What’s Going On”?',
          answers: ['Fleetwood Mac', 'a-ha', 'Queen', 'Marvin Gaye'],
          correctAnswer: 3,
          explanation:
              'Marvin Gaye is correct. This question concerns What’s Going On.',
        ),
        Question(
          question: 'Which artist recorded “Dreams”?',
          answers: ['The Police', 'Fleetwood Mac', 'Michael Jackson', 'ABBA'],
          correctAnswer: 1,
          explanation:
              'Fleetwood Mac is correct. This question concerns Dreams.',
        ),
        Question(
          question: 'Which artist recorded “Every Breath You Take”?',
          answers: [
            'The Police',
            'Bruce Springsteen',
            'Nirvana',
            'Aretha Franklin',
          ],
          correctAnswer: 0,
          explanation: 'The Police is correct. This question concerns Every Breath You Take.',
        ),
        Question(
          question: 'Which artist recorded “Born to Run”?',
          answers: [
            'Beyonce featuring Jay-Z',
            'Bruce Springsteen',
            'Eagles',
            'Adele',
          ],
          correctAnswer: 1,
          explanation: 'Bruce Springsteen is correct. This question concerns Born to Run.',
        ),
        Question(
          question: 'Which artist recorded “Crazy in Love”?',
          answers: [
            'The Beatles',
            'Prince',
            'Stevie Wonder',
            'Beyonce featuring Jay-Z',
          ],
          correctAnswer: 3,
          explanation: 'Beyonce featuring Jay-Z is correct. This question concerns Crazy in Love.',
        ),
        Question(
          question: 'Which artist recorded “Superstition”?',
          answers: [
            'Bob Dylan',
            'Stevie Wonder',
            'Whitney Houston',
            'Dolly Parton',
          ],
          correctAnswer: 1,
          explanation:
              'Stevie Wonder is correct. This question concerns Superstition.',
        ),
        Question(
          question: 'Which artist recorded “Jolene”?',
          answers: ['Queen', 'a-ha', 'Dolly Parton', 'Chuck Berry'],
          correctAnswer: 2,
          explanation:
              'Dolly Parton is correct. This question concerns Jolene.',
        ),
        Question(
          question: 'Which artist recorded “Take on Me”?',
          answers: ['a-ha', 'ABBA', 'Marvin Gaye', 'Michael Jackson'],
          correctAnswer: 0,
          explanation: 'a-ha is correct. This question concerns Take on Me.',
        ),
      ],
      'Medium': [
        Question(
          question:
              "Which artist's 'Billie Jean' appears on the album Thriller?",
          answers: [
            'Stevie Wonder',
            'George Michael',
            'Michael Jackson',
            'Prince',
          ],
          correctAnswer: 2,
          explanation:
              "'Billie Jean' is a Michael Jackson single from Thriller.",
        ),
        Question(
          question: "Aretha Franklin's famous 1967 recording of 'Respect' was originally written and recorded by whom?",
          answers: ['Marvin Gaye', 'Ray Charles', 'Sam Cooke', 'Otis Redding'],
          correctAnswer: 3,
          explanation: "Otis Redding wrote and first recorded 'Respect' before Aretha Franklin's landmark version.",
        ),
        Question(
          question: "Which Eagles album shares its title with the song 'Hotel California'?",
          answers: [
            'The Long Run',
            'Desperado',
            'Hotel California',
            'One of These Nights',
          ],
          correctAnswer: 2,
          explanation: "'Hotel California' is the title track of the Eagles' 1976 album.",
        ),
        Question(
          question:
              'Which artist starred in the film and soundtrack Purple Rain?',
          answers: [
            'Lionel Richie',
            'Prince',
            'David Bowie',
            'Michael Jackson',
          ],
          correctAnswer: 1,
          explanation:
              'Prince starred in Purple Rain and created its hit soundtrack.',
        ),
        Question(
          question: "Who wrote 'Like a Rolling Stone'?",
          answers: [
            'Paul Simon',
            'Bob Dylan',
            'Bruce Springsteen',
            'Neil Young',
          ],
          correctAnswer: 1,
          explanation: "Bob Dylan wrote and recorded 'Like a Rolling Stone.'",
        ),
        Question(
          question: "'Bohemian Rhapsody' was written by which member of Queen?",
          answers: [
            'Freddie Mercury',
            'John Deacon',
            'Roger Taylor',
            'Brian May',
          ],
          correctAnswer: 0,
          explanation: "Freddie Mercury wrote 'Bohemian Rhapsody.'",
        ),
        Question(
          question: "Which Swedish group recorded 'Dancing Queen'?",
          answers: ['Roxette', 'ABBA', 'Europe', 'Ace of Base'],
          correctAnswer: 1,
          explanation: "ABBA recorded 'Dancing Queen,' one of the group's signature hits.",
        ),
        Question(
          question: "'Smells Like Teen Spirit' helped bring which genre into the mainstream in the early 1990s?",
          answers: ['Bluegrass', 'Disco', 'Grunge', 'Reggae'],
          correctAnswer: 2,
          explanation: "Nirvana's 'Smells Like Teen Spirit' became an anthem of the grunge movement.",
        ),
        Question(
          question: "Which Adele album includes 'Rolling in the Deep'?",
          answers: ['19', '30', '25', '21'],
          correctAnswer: 3,
          explanation:
              "'Rolling in the Deep' is the opening track on Adele's album 21.",
        ),
        Question(
          question: "Which songwriting partnership wrote 'Hey Jude'?",
          answers: [
            'Goffin–King',
            'Lennon–McCartney',
            'Jagger–Richards',
            'Bacharach–David',
          ],
          correctAnswer: 1,
          explanation: "'Hey Jude' is credited to the Beatles songwriting partnership Lennon–McCartney.",
        ),
        Question(
          question: "Whitney Houston's hit version of 'I Will Always Love You' appeared on which movie soundtrack?",
          answers: [
            'The Preacher’s Wife',
            'The Bodyguard',
            'Dreamgirls',
            'Waiting to Exhale',
          ],
          correctAnswer: 1,
          explanation:
              "Houston's version was recorded for The Bodyguard soundtrack.",
        ),
        Question(
          question: "Which guitarist is most closely associated with the classic recording of 'Johnny B. Goode'?",
          answers: ['Chuck Berry', 'Buddy Holly', 'Bo Diddley', 'B.B. King'],
          correctAnswer: 0,
          explanation: "Chuck Berry wrote, sang, and played guitar on 'Johnny B. Goode.'",
        ),
        Question(
          question: "Marvin Gaye's 'What's Going On' is especially associated with which theme?",
          answers: [
            'Space exploration',
            'Medieval romance',
            'Baseball',
            'Social and political concern',
          ],
          correctAnswer: 3,
          explanation:
              "'What's Going On' addresses war, inequality, and social unrest.",
        ),
        Question(
          question: "Who sings lead vocals on Fleetwood Mac's hit 'Dreams'?",
          answers: [
            'Stevie Nicks',
            'Lindsey Buckingham',
            'Christine McVie',
            'Mick Fleetwood',
          ],
          correctAnswer: 0,
          explanation: "Stevie Nicks wrote and sang lead on 'Dreams.'",
        ),
        Question(
          question: "Who wrote The Police hit 'Every Breath You Take'?",
          answers: [
            'Elvis Costello',
            'Andy Summers',
            'Sting',
            'Stewart Copeland',
          ],
          correctAnswer: 2,
          explanation: "Sting wrote 'Every Breath You Take' for The Police.",
        ),
        Question(
          question: 'Which U.S. state is Bruce Springsteen most strongly associated with?',
          answers: ['Texas', 'California', 'New Jersey', 'Tennessee'],
          correctAnswer: 2,
          explanation: 'Bruce Springsteen was raised in New Jersey and is strongly identified with the state.',
        ),
        Question(
          question: "'Crazy in Love' features Beyoncé alongside which rapper?",
          answers: ['Kanye West', 'Jay-Z', 'Nas', 'LL Cool J'],
          correctAnswer: 1,
          explanation: "Jay-Z performs the featured rap on 'Crazy in Love.'",
        ),
        Question(
          question: "Which instrument is especially prominent in Stevie Wonder's 'Superstition'?",
          answers: ['Banjo', 'Harp', 'Mandolin', 'Clavinet'],
          correctAnswer: 3,
          explanation: "A funky Hohner Clavinet riff drives Stevie Wonder's 'Superstition.'",
        ),
        Question(
          question: "Dolly Parton wrote 'Jolene' after being inspired partly by what?",
          answers: [
            'A movie character',
            'A bank teller who flirted with her husband',
            'A newspaper headline',
            'A childhood teacher',
          ],
          correctAnswer: 1,
          explanation: 'Parton has explained that the song drew partly from a bank teller who flirted with her husband, while the name came from a young fan.',
        ),
        Question(
          question: "The music video for a-ha's 'Take on Me' is famous for combining live action with what visual technique?",
          answers: [
            'Computer-generated 3D',
            'Pencil-sketch animation',
            'Shadow puppetry',
            'Stop-motion clay',
          ],
          correctAnswer: 1,
          explanation: "The acclaimed 'Take on Me' video combines live action with rotoscoped pencil-sketch animation.",
        ),
      ],
      'Hard': [
        Question(
          question: 'On which album or release did “Billie Jean” appear?',
          answers: ['Rumours', 'Nevermind', 'Thriller', 'Otis Redding'],
          correctAnswer: 2,
          explanation:
              'Thriller is correct. This question concerns Billie Jean.',
        ),
        Question(
          question: 'On which album or release did “Respect” appear?',
          answers: [
            'I Never Loved a Man the Way I Love You',
            'Lady Soul',
            'Aretha Now',
            'Young, Gifted and Black',
          ],
          correctAnswer: 0,
          explanation: 'Aretha Franklin’s hit version of “Respect” appears on I Never Loved a Man the Way I Love You.',
        ),
        Question(
          question: 'On which album or release did “Hotel California” appear?',
          answers: [
            'Born to Run',
            'Purple Rain',
            'non-album single',
            'Hotel California',
          ],
          correctAnswer: 3,
          explanation: 'Hotel California is correct. This question concerns Hotel California.',
        ),
        Question(
          question: 'On which album or release did “Purple Rain” appear?',
          answers: [
            'Purple Rain',
            'The Bodyguard soundtrack',
            'Highway 61 Revisited',
            'Dangerously in Love',
          ],
          correctAnswer: 0,
          explanation:
              'Purple Rain is correct. This question concerns Purple Rain.',
        ),
        Question(
          question:
              'On which album or release did “Like a Rolling Stone” appear?',
          answers: [
            'Highway 61 Revisited',
            'Talking Book',
            'Chuck Berry Is on Top',
            'A Night at the Opera',
          ],
          correctAnswer: 0,
          explanation: 'Highway 61 Revisited is correct. This question concerns Like a Rolling Stone.',
        ),
        Question(
          question: 'On which album or release did “Bohemian Rhapsody” appear?',
          answers: [
            'A Night at the Opera',
            'What’s Going On',
            'Jolene',
            'Arrival',
          ],
          correctAnswer: 0,
          explanation: 'A Night at the Opera is correct. This question concerns Bohemian Rhapsody.',
        ),
        Question(
          question: 'On which album or release did “Dancing Queen” appear?',
          answers: ['Arrival', 'Nevermind', 'Hunting High and Low', 'Rumours'],
          correctAnswer: 0,
          explanation:
              'Arrival is correct. This question concerns Dancing Queen.',
        ),
        Question(
          question:
              'On which album or release did “Smells Like Teen Spirit” appear?',
          answers: ['Thriller', '21', 'Nevermind', 'Synchronicity'],
          correctAnswer: 2,
          explanation: 'Nevermind is correct. This question concerns Smells Like Teen Spirit.',
        ),
        Question(
          question:
              'On which album or release did “Rolling in the Deep” appear?',
          answers: ['Otis Redding', '21', 'non-album single', 'Born to Run'],
          correctAnswer: 1,
          explanation:
              '21 is correct. This question concerns Rolling in the Deep.',
        ),
        Question(
          question: 'On which album or release did “Hey Jude” appear?',
          answers: [
            'non-album single',
            'Hotel California',
            'The Bodyguard soundtrack',
            'Dangerously in Love',
          ],
          correctAnswer: 0,
          explanation:
              'non-album single is correct. This question concerns Hey Jude.',
        ),
        Question(
          question:
              'On which album or release did “I Will Always Love You” appear?',
          answers: [
            'Talking Book',
            'Chuck Berry Is on Top',
            'Purple Rain',
            'The Bodyguard soundtrack',
          ],
          correctAnswer: 3,
          explanation: 'The Bodyguard soundtrack is correct. This question concerns I Will Always Love You.',
        ),
        Question(
          question: 'On which album or release did “Johnny B. Goode” appear?',
          answers: [
            'Jolene',
            'What’s Going On',
            'Highway 61 Revisited',
            'Chuck Berry Is on Top',
          ],
          correctAnswer: 3,
          explanation: 'Chuck Berry Is on Top is correct. This question concerns Johnny B. Goode.',
        ),
        Question(
          question: 'On which album or release did “What’s Going On” appear?',
          answers: [
            'A Night at the Opera',
            'What’s Going On',
            'Hunting High and Low',
            'Rumours',
          ],
          correctAnswer: 1,
          explanation: 'What’s Going On is correct. This question concerns What’s Going On.',
        ),
        Question(
          question: 'On which album or release did “Dreams” appear?',
          answers: ['Rumours', 'Synchronicity', 'Thriller', 'Arrival'],
          correctAnswer: 0,
          explanation: 'Rumours is correct. This question concerns Dreams.',
        ),
        Question(
          question:
              'On which album or release did “Every Breath You Take” appear?',
          answers: [
            'Otis Redding',
            'Synchronicity',
            'Nevermind',
            'Born to Run',
          ],
          correctAnswer: 1,
          explanation: 'Synchronicity is correct. This question concerns Every Breath You Take.',
        ),
        Question(
          question: 'On which album or release did “Born to Run” appear?',
          answers: [
            'Hotel California',
            'Dangerously in Love',
            'Born to Run',
            '21',
          ],
          correctAnswer: 2,
          explanation:
              'Born to Run is correct. This question concerns Born to Run.',
        ),
        Question(
          question: 'On which album or release did “Crazy in Love” appear?',
          answers: [
            'non-album single',
            'Purple Rain',
            'Dangerously in Love',
            'Talking Book',
          ],
          correctAnswer: 2,
          explanation: 'Dangerously in Love is correct. This question concerns Crazy in Love.',
        ),
        Question(
          question: 'On which album or release did “Superstition” appear?',
          answers: [
            'Highway 61 Revisited',
            'The Bodyguard soundtrack',
            'Talking Book',
            'Jolene',
          ],
          correctAnswer: 2,
          explanation:
              'Talking Book is correct. This question concerns Superstition.',
        ),
        Question(
          question: 'On which album or release did “Jolene” appear?',
          answers: [
            'Hunting High and Low',
            'Jolene',
            'Chuck Berry Is on Top',
            'A Night at the Opera',
          ],
          correctAnswer: 1,
          explanation: 'Jolene is correct. This question concerns Jolene.',
        ),
        Question(
          question: 'On which album or release did “Take on Me” appear?',
          answers: [
            'Thriller',
            'Arrival',
            'Hunting High and Low',
            'What’s Going On',
          ],
          correctAnswer: 2,
          explanation: 'Hunting High and Low is correct. This question concerns Take on Me.',
        ),
      ],
    },
    'Finish the Lyrics': {
      'Easy': [
        Question(
          question:
              'Which artist is best known for the song “Don’t Stop Believin’”?',
          answers: [
            'Bon Jovi',
            'Journey',
            'Katrina and the Waves',
            'Katy Perry',
          ],
          correctAnswer: 1,
          explanation: 'Journey is correct. This question concerns Don’t Stop Believin’.',
        ),
        Question(
          question:
              'Which artist is best known for the song “Livin’ on a Prayer”?',
          answers: [
            'Kelly Clarkson',
            'Bon Jovi',
            'Taylor Swift',
            'Neil Diamond',
          ],
          correctAnswer: 1,
          explanation:
              'Bon Jovi is correct. This question concerns Livin’ on a Prayer.',
        ),
        Question(
          question: 'Which artist is best known for the song “Sweet Caroline”?',
          answers: [
            'Neil Diamond',
            'Mark Ronson featuring Bruno Mars',
            'Lizzo',
            'Queen',
          ],
          correctAnswer: 0,
          explanation:
              'Neil Diamond is correct. This question concerns Sweet Caroline.',
        ),
        Question(
          question:
              'Which artist is best known for the song “We Will Rock You”?',
          answers: [
            'Cyndi Lauper',
            'Pharrell Williams',
            'Queen',
            'Justin Timberlake',
          ],
          correctAnswer: 2,
          explanation:
              'Queen is correct. This question concerns We Will Rock You.',
        ),
        Question(
          question: 'Which artist is best known for the song “Girls Just Want to Have Fun”?',
          answers: ['Survivor', 'Kenny Loggins', 'Cyndi Lauper', 'Bruno Mars'],
          correctAnswer: 2,
          explanation: 'Cyndi Lauper is correct. This question concerns Girls Just Want to Have Fun.',
        ),
        Question(
          question: 'Which artist is best known for the song “Footloose”?',
          answers: [
            'Shania Twain',
            'Whitney Houston',
            'Journey',
            'Kenny Loggins',
          ],
          correctAnswer: 3,
          explanation:
              'Kenny Loggins is correct. This question concerns Footloose.',
        ),
        Question(
          question: 'Which artist is best known for the song “Man! I Feel Like a Woman!”?',
          answers: [
            'Shania Twain',
            'Katy Perry',
            'Katrina and the Waves',
            'Bon Jovi',
          ],
          correctAnswer: 0,
          explanation: 'Shania Twain is correct. This question concerns Man! I Feel Like a Woman!.',
        ),
        Question(
          question: 'Which artist is best known for the song “Firework”?',
          answers: [
            'Neil Diamond',
            'Katy Perry',
            'Taylor Swift',
            'Kelly Clarkson',
          ],
          correctAnswer: 1,
          explanation:
              'Katy Perry is correct. This question concerns Firework.',
        ),
        Question(
          question: 'Which artist is best known for the song “Shake It Off”?',
          answers: [
            'Taylor Swift',
            'Mark Ronson featuring Bruno Mars',
            'Queen',
            'Lizzo',
          ],
          correctAnswer: 0,
          explanation:
              'Taylor Swift is correct. This question concerns Shake It Off.',
        ),
        Question(
          question: 'Which artist is best known for the song “Uptown Funk”?',
          answers: [
            'Justin Timberlake',
            'Mark Ronson featuring Bruno Mars',
            'Cyndi Lauper',
            'Pharrell Williams',
          ],
          correctAnswer: 1,
          explanation: 'Mark Ronson featuring Bruno Mars is correct. This question concerns Uptown Funk.',
        ),
        Question(
          question: 'Which artist is best known for the song “Roar”?',
          answers: ['Katy Perry', 'Kenny Loggins', 'Bruno Mars', 'Survivor'],
          correctAnswer: 0,
          explanation: 'Katy Perry is correct. This question concerns Roar.',
        ),
        Question(
          question: 'Which artist is best known for the song “Happy”?',
          answers: [
            'Journey',
            'Pharrell Williams',
            'Whitney Houston',
            'Shania Twain',
          ],
          correctAnswer: 1,
          explanation:
              'Pharrell Williams is correct. This question concerns Happy.',
        ),
        Question(
          question:
              'Which artist is best known for the song “Eye of the Tiger”?',
          answers: [
            'Katrina and the Waves',
            'Katy Perry',
            'Survivor',
            'Bon Jovi',
          ],
          correctAnswer: 2,
          explanation:
              'Survivor is correct. This question concerns Eye of the Tiger.',
        ),
        Question(
          question: 'Which artist is best known for the song “I Wanna Dance with Somebody”?',
          answers: [
            'Neil Diamond',
            'Taylor Swift',
            'Kelly Clarkson',
            'Whitney Houston',
          ],
          correctAnswer: 3,
          explanation: 'Whitney Houston is correct. This question concerns I Wanna Dance with Somebody.',
        ),
        Question(
          question:
              'Which artist is best known for the song “Walking on Sunshine”?',
          answers: [
            'Queen',
            'Lizzo',
            'Mark Ronson featuring Bruno Mars',
            'Katrina and the Waves',
          ],
          correctAnswer: 3,
          explanation: 'Katrina and the Waves is correct. This question concerns Walking on Sunshine.',
        ),
        Question(
          question:
              'Which artist is best known for the song “Since U Been Gone”?',
          answers: [
            'Cyndi Lauper',
            'Justin Timberlake',
            'Kelly Clarkson',
            'Pharrell Williams',
          ],
          correctAnswer: 2,
          explanation: 'Kelly Clarkson is correct. This question concerns Since U Been Gone.',
        ),
        Question(
          question: 'Which artist is best known for the song “Stronger”?',
          answers: [
            'Bruno Mars',
            'Kelly Clarkson',
            'Survivor',
            'Kenny Loggins',
          ],
          correctAnswer: 1,
          explanation:
              'Kelly Clarkson is correct. This question concerns Stronger.',
        ),
        Question(
          question: 'Which artist is best known for the song “Good as Hell”?',
          answers: ['Shania Twain', 'Whitney Houston', 'Journey', 'Lizzo'],
          correctAnswer: 3,
          explanation: 'Lizzo is correct. This question concerns Good as Hell.',
        ),
        Question(
          question: 'Which artist is best known for the song “Can’t Stop the Feeling!”?',
          answers: [
            'Bon Jovi',
            'Justin Timberlake',
            'Katrina and the Waves',
            'Katy Perry',
          ],
          correctAnswer: 1,
          explanation: 'Justin Timberlake is correct. This question concerns Can’t Stop the Feeling!.',
        ),
        Question(
          question: 'Which artist is best known for the song “Count on Me”?',
          answers: [
            'Neil Diamond',
            'Bruno Mars',
            'Taylor Swift',
            'Kelly Clarkson',
          ],
          correctAnswer: 1,
          explanation:
              'Bruno Mars is correct. This question concerns Count on Me.',
        ),
      ],
      'Medium': [
        Question(
          question: "Which album includes Journey's 'Don't Stop Believin''?",
          answers: ['Raised on Radio', 'Escape', 'Frontiers', 'Infinity'],
          correctAnswer: 1,
          explanation: "Journey released 'Don't Stop Believin'' on the 1981 album Escape.",
        ),
        Question(
          question: "Which Bon Jovi album includes 'Livin' on a Prayer'?",
          answers: [
            'Keep the Faith',
            'Slippery When Wet',
            '7800° Fahrenheit',
            'New Jersey',
          ],
          correctAnswer: 1,
          explanation:
              "'Livin' on a Prayer' appears on Bon Jovi's Slippery When Wet.",
        ),
        Question(
          question: "Who wrote and recorded 'Sweet Caroline'?",
          answers: ['Neil Diamond', 'Elton John', 'Paul Simon', 'Billy Joel'],
          correctAnswer: 0,
          explanation: "Neil Diamond wrote and recorded 'Sweet Caroline.'",
        ),
        Question(
          question: "'We Will Rock You' appears on which Queen album?",
          answers: [
            'News of the World',
            'Sheer Heart Attack',
            'A Night at the Opera',
            'The Game',
          ],
          correctAnswer: 0,
          explanation:
              "Queen released 'We Will Rock You' on News of the World in 1977.",
        ),
        Question(
          question: "Cyndi Lauper's 'Girls Just Want to Have Fun' appears on which debut album?",
          answers: [
            'She\'s So Unusual',
            'True Colors',
            'Hat Full of Stars',
            'A Night to Remember',
          ],
          correctAnswer: 0,
          explanation: "'Girls Just Want to Have Fun' appears on Lauper's debut album She's So Unusual.",
        ),
        Question(
          question: "Kenny Loggins recorded 'Footloose' for the soundtrack of which film?",
          answers: ['Flashdance', 'Footloose', 'Dirty Dancing', 'Top Gun'],
          correctAnswer: 1,
          explanation:
              'Loggins recorded the title song for the 1984 film Footloose.',
        ),
        Question(
          question:
              "Which country singer recorded 'Man! I Feel Like a Woman!'?",
          answers: [
            'Faith Hill',
            'Reba McEntire',
            'Shania Twain',
            'Martina McBride',
          ],
          correctAnswer: 2,
          explanation: "Shania Twain recorded 'Man! I Feel Like a Woman!' for Come On Over.",
        ),
        Question(
          question: "Katy Perry's 'Firework' appears on which album?",
          answers: ['Prism', 'Teenage Dream', 'Witness', 'One of the Boys'],
          correctAnswer: 1,
          explanation: "'Firework' is from Katy Perry's Teenage Dream.",
        ),
        Question(
          question: "Taylor Swift's 'Shake It Off' was the lead single from which album?",
          answers: ['Reputation', 'Lover', 'Red', '1989'],
          correctAnswer: 3,
          explanation: "'Shake It Off' introduced Swift's album 1989.",
        ),
        Question(
          question: "Who is the lead artist credited on 'Uptown Funk'?",
          answers: [
            'Bruno Mars',
            'Pharrell Williams',
            'Mark Ronson',
            'Justin Timberlake',
          ],
          correctAnswer: 2,
          explanation:
              "'Uptown Funk' is credited to Mark Ronson featuring Bruno Mars.",
        ),
        Question(
          question: "Katy Perry's 'Roar' appears on which album?",
          answers: ['Teenage Dream', 'Prism', 'Witness', 'Smile'],
          correctAnswer: 1,
          explanation: "'Roar' is the lead single from Katy Perry's Prism.",
        ),
        Question(
          question: "Pharrell Williams's 'Happy' was featured prominently in which animated-film franchise?",
          answers: ['Despicable Me', 'Shrek', 'Toy Story', 'Ice Age'],
          correctAnswer: 0,
          explanation: "'Happy' appeared in Despicable Me 2 before becoming a major standalone hit.",
        ),
        Question(
          question: "Survivor's 'Eye of the Tiger' was written for which film?",
          answers: ['The Karate Kid', 'Over the Top', 'Rocky III', 'Rocky IV'],
          correctAnswer: 2,
          explanation:
              "'Eye of the Tiger' was written as the theme for Rocky III.",
        ),
        Question(
          question: "Whitney Houston's 'I Wanna Dance with Somebody' has what parenthetical subtitle?",
          answers: [
            'Who Loves Me',
            'All Night Long',
            'With Somebody',
            'Dance Tonight',
          ],
          correctAnswer: 0,
          explanation:
              "The full title is 'I Wanna Dance with Somebody (Who Loves Me).'",
        ),
        Question(
          question: "Which group recorded 'Walking on Sunshine'?",
          answers: [
            'The Bangles',
            'The Go-Go’s',
            'Katrina and the Waves',
            'Roxette',
          ],
          correctAnswer: 2,
          explanation: "Katrina and the Waves recorded 'Walking on Sunshine.'",
        ),
        Question(
          question:
              "'Since U Been Gone' appears on which Kelly Clarkson album?",
          answers: ['All I Ever Wanted', 'Breakaway', 'Thankful', 'Stronger'],
          correctAnswer: 1,
          explanation:
              "Kelly Clarkson released 'Since U Been Gone' on Breakaway.",
        ),
        Question(
          question: "Kelly Clarkson's 'Stronger' has which phrase in parentheses in its full title?",
          answers: [
            'Because of You',
            'Walk Away',
            'What Doesn’t Kill You',
            'Already Gone',
          ],
          correctAnswer: 2,
          explanation: "The full title is 'Stronger (What Doesn't Kill You).'",
        ),
        Question(
          question: "Which artist recorded 'Good as Hell'?",
          answers: ['P!nk', 'Alicia Keys', 'Meghan Trainor', 'Lizzo'],
          correctAnswer: 3,
          explanation: "Lizzo recorded 'Good as Hell.'",
        ),
        Question(
          question: "Justin Timberlake's 'Can't Stop the Feeling!' was recorded for which animated film?",
          answers: ['The Lego Movie', 'Sing', 'Trolls', 'Minions'],
          correctAnswer: 2,
          explanation:
              "Timberlake recorded 'Can't Stop the Feeling!' for Trolls.",
        ),
        Question(
          question: "Bruno Mars's 'Count on Me' appears on which album?",
          answers: [
            'Doo-Wops & Hooligans',
            '24K Magic',
            'Unorthodox Jukebox',
            'An Evening with Silk Sonic',
          ],
          correctAnswer: 0,
          explanation: "'Count on Me' appears on Bruno Mars's debut album Doo-Wops & Hooligans.",
        ),
      ],
      'Hard': [
        Question(
          question: "Which Journey keyboardist co-wrote 'Don't Stop Believin'' with Steve Perry and Neal Schon?",
          answers: [
            'Ross Valory',
            'Steve Smith',
            'Gregg Rolie',
            'Jonathan Cain',
          ],
          correctAnswer: 3,
          explanation: "Jonathan Cain co-wrote 'Don't Stop Believin'' with Steve Perry and Neal Schon.",
        ),
        Question(
          question: "'Livin' on a Prayer' was co-written by Jon Bon Jovi, Richie Sambora, and which songwriter?",
          answers: [
            'Diane Warren',
            'Max Martin',
            'Jim Steinman',
            'Desmond Child',
          ],
          correctAnswer: 3,
          explanation: "Desmond Child co-wrote 'Livin' on a Prayer.'",
        ),
        Question(
          question: "At which baseball venue has 'Sweet Caroline' become a famous late-game tradition?",
          answers: [
            'Wrigley Field',
            'Dodger Stadium',
            'Fenway Park',
            'Yankee Stadium',
          ],
          correctAnswer: 2,
          explanation:
              "'Sweet Caroline' is famously played at Boston's Fenway Park.",
        ),
        Question(
          question: "Who wrote Queen's 'We Will Rock You'?",
          answers: [
            'Freddie Mercury',
            'John Deacon',
            'Roger Taylor',
            'Brian May',
          ],
          correctAnswer: 3,
          explanation: "Queen guitarist Brian May wrote 'We Will Rock You.'",
        ),
        Question(
          question: "Cyndi Lauper's 'Girls Just Want to Have Fun' was written by which songwriter, who recorded an earlier version?",
          answers: [
            'Billy Steinberg',
            'Desmond Child',
            'Tom Kelly',
            'Robert Hazard',
          ],
          correctAnswer: 3,
          explanation: "Robert Hazard wrote the song and recorded an earlier version before Lauper's hit.",
        ),
        Question(
          question: "Who wrote the hit 'Footloose'?",
          answers: [
            'Kenny Loggins and Dean Pitchford',
            'Jim Steinman and Dean Pitchford',
            'David Foster and Kenny Loggins',
            'Kenny Loggins and Michael McDonald',
          ],
          correctAnswer: 0,
          explanation:
              "Kenny Loggins and lyricist Dean Pitchford wrote 'Footloose.'",
        ),
        Question(
          question: "Shania Twain co-wrote 'Man! I Feel Like a Woman!' with which producer?",
          answers: [
            'David Foster',
            'Don Was',
            'Robert John “Mutt” Lange',
            'Rick Rubin',
          ],
          correctAnswer: 2,
          explanation: "Twain co-wrote the song with her producer Robert John 'Mutt' Lange.",
        ),
        Question(
          question: "Which songwriting team wrote Katy Perry's 'Firework' with Perry?",
          answers: [
            'Stargate and Sandy Vee',
            'The Matrix and Max Martin',
            'Ryan Tedder and Greg Kurstin',
            'Jack Antonoff and Shellback',
          ],
          correctAnswer: 0,
          explanation:
              "Katy Perry wrote 'Firework' with Stargate and Sandy Vee.",
        ),
        Question(
          question: "Who directed Taylor Swift's 'Shake It Off' music video?",
          answers: ['Dave Meyers', 'Mark Romanek', 'Joseph Kahn', 'Jake Nava'],
          correctAnswer: 1,
          explanation: "Mark Romanek directed the 'Shake It Off' music video.",
        ),
        Question(
          question: "Which producer is the lead artist on 'Uptown Funk'?",
          answers: ['Diplo', 'Mark Ronson', 'Bruno Mars', 'Jeff Bhasker'],
          correctAnswer: 1,
          explanation: "Producer Mark Ronson is the lead credited artist on 'Uptown Funk.'",
        ),
        Question(
          question: "Which songwriting team helped Katy Perry write 'Roar'?",
          answers: [
            'Stargate and Ne-Yo',
            'Jack Antonoff and Shellback',
            'Max Martin, Dr. Luke, Bonnie McKee, and Cirkut',
            'Ryan Tedder and Dan Wilson',
          ],
          correctAnswer: 2,
          explanation: "Perry co-wrote 'Roar' with Max Martin, Dr. Luke, Bonnie McKee, and Cirkut.",
        ),
        Question(
          question:
              "'Happy' originally appeared on the soundtrack to which film?",
          answers: ['Trolls', 'Sing', 'Despicable Me 2', 'Minions'],
          correctAnswer: 2,
          explanation:
              "'Happy' first appeared on the Despicable Me 2 soundtrack.",
        ),
        Question(
          question:
              "Which Rocky star asked Survivor to write 'Eye of the Tiger'?",
          answers: [
            'Carl Weathers',
            'Sylvester Stallone',
            'Dolph Lundgren',
            'Burt Young',
          ],
          correctAnswer: 1,
          explanation: 'Sylvester Stallone asked Survivor to create a theme for Rocky III.',
        ),
        Question(
          question:
              "Who produced Whitney Houston's 'I Wanna Dance with Somebody'?",
          answers: [
            'David Foster',
            'Quincy Jones',
            'Babyface',
            'Narada Michael Walden',
          ],
          correctAnswer: 3,
          explanation: "Narada Michael Walden produced Houston's recording.",
        ),
        Question(
          question: "Who wrote 'Walking on Sunshine'?",
          answers: [
            'Chrissie Hynde',
            'Susanna Hoffs',
            'Katrina Leskanich',
            'Kimberley Rew',
          ],
          correctAnswer: 3,
          explanation: "Katrina and the Waves guitarist Kimberley Rew wrote 'Walking on Sunshine.'",
        ),
        Question(
          question: "Which production team co-wrote and produced Kelly Clarkson's 'Since U Been Gone'?",
          answers: [
            'The Neptunes',
            'Jimmy Jam and Terry Lewis',
            'Stargate',
            'Max Martin and Dr. Luke',
          ],
          correctAnswer: 3,
          explanation: "Max Martin and Dr. Luke co-wrote and produced 'Since U Been Gone.'",
        ),
        Question(
          question: "Kelly Clarkson's 'Stronger' was released on which album?",
          answers: ['Breakaway', 'My December', 'Piece by Piece', 'Stronger'],
          correctAnswer: 3,
          explanation: "The song appears on Clarkson's 2011 album Stronger.",
        ),
        Question(
          question: "'Good as Hell' was originally recorded for the soundtrack of which film?",
          answers: [
            'Barbershop: The Next Cut',
            'Pitch Perfect 2',
            'Girls Trip',
            'Hidden Figures',
          ],
          correctAnswer: 0,
          explanation: "Lizzo originally recorded 'Good as Hell' for Barbershop: The Next Cut.",
        ),
        Question(
          question: "Who co-wrote and co-produced 'Can't Stop the Feeling!' with Justin Timberlake?",
          answers: [
            'Ryan Tedder and Benny Blanco',
            'Max Martin and Shellback',
            'Pharrell Williams and Chad Hugo',
            'Timbaland and Danja',
          ],
          correctAnswer: 1,
          explanation: 'Justin Timberlake wrote and produced the song with Max Martin and Shellback.',
        ),
        Question(
          question: "Which singer-songwriter included 'Count on Me' on a debut studio album?",
          answers: ['Bruno Mars', 'Jason Mraz', 'Ed Sheeran', 'John Legend'],
          correctAnswer: 0,
          explanation: "Bruno Mars included 'Count on Me' on his debut album Doo-Wops & Hooligans.",
        ),
      ],
    },
  },
  'Sports': {
    'NFL Super Bowls': {
      'Easy': [
        Question(
          question: 'Which team won Super Bowl I?',
          answers: [
            'New York Giants',
            'New York Jets',
            'Los Angeles Rams',
            'Green Bay Packers',
          ],
          correctAnswer: 3,
          explanation: 'Green Bay Packers is correct. This question concerns Super Bowl I.',
        ),
        Question(
          question: 'Which team won Super Bowl III?',
          answers: [
            'Denver Broncos',
            'New York Jets',
            'Baltimore Colts',
            'Green Bay Packers',
          ],
          correctAnswer: 1,
          explanation: 'New York Jets is correct. This question concerns Super Bowl III.',
        ),
        Question(
          question: 'Which team won Super Bowl V?',
          answers: [
            'Miami Dolphins',
            'St. Louis Rams',
            'New York Jets',
            'Baltimore Colts',
          ],
          correctAnswer: 3,
          explanation: 'Baltimore Colts is correct. This question concerns Super Bowl V.',
        ),
        Question(
          question: 'Which team won Super Bowl VII?',
          answers: [
            'New England Patriots',
            'Baltimore Colts',
            'Pittsburgh Steelers',
            'Miami Dolphins',
          ],
          correctAnswer: 3,
          explanation: 'Miami Dolphins is correct. This question concerns Super Bowl VII.',
        ),
        Question(
          question: 'Which team won Super Bowl X?',
          answers: [
            'Pittsburgh Steelers',
            'Miami Dolphins',
            'New Orleans Saints',
            'San Francisco 49ers',
          ],
          correctAnswer: 0,
          explanation: 'Pittsburgh Steelers is correct. This question concerns Super Bowl X.',
        ),
        Question(
          question: 'Which team won Super Bowl XIII?',
          answers: [
            'Kansas City Chiefs',
            'Chicago Bears',
            'Pittsburgh Steelers',
            'Denver Broncos',
          ],
          correctAnswer: 2,
          explanation: 'Pittsburgh Steelers is correct. This question concerns Super Bowl XIII.',
        ),
        Question(
          question: 'Which team won Super Bowl XVI?',
          answers: [
            'Los Angeles Rams',
            'New York Giants',
            'San Francisco 49ers',
            'St. Louis Rams',
          ],
          correctAnswer: 2,
          explanation: 'San Francisco 49ers is correct. This question concerns Super Bowl XVI.',
        ),
        Question(
          question: 'Which team won Super Bowl XX?',
          answers: [
            'New England Patriots',
            'Denver Broncos',
            'Green Bay Packers',
            'Chicago Bears',
          ],
          correctAnswer: 3,
          explanation:
              'Chicago Bears is correct. This question concerns Super Bowl XX.',
        ),
        Question(
          question: 'Which team won Super Bowl XXIII?',
          answers: [
            'St. Louis Rams',
            'New York Giants',
            'New York Jets',
            'San Francisco 49ers',
          ],
          correctAnswer: 3,
          explanation: 'San Francisco 49ers is correct. This question concerns Super Bowl XXIII.',
        ),
        Question(
          question: 'Which team won Super Bowl XXV?',
          answers: [
            'New England Patriots',
            'Baltimore Colts',
            'Denver Broncos',
            'New York Giants',
          ],
          correctAnswer: 3,
          explanation: 'New York Giants is correct. This question concerns Super Bowl XXV.',
        ),
        Question(
          question: 'Which team won Super Bowl XXXII?',
          answers: [
            'Miami Dolphins',
            'St. Louis Rams',
            'Denver Broncos',
            'New Orleans Saints',
          ],
          correctAnswer: 2,
          explanation: 'Denver Broncos is correct. This question concerns Super Bowl XXXII.',
        ),
        Question(
          question: 'Which team won Super Bowl XXXIV?',
          answers: [
            'New England Patriots',
            'Pittsburgh Steelers',
            'Kansas City Chiefs',
            'St. Louis Rams',
          ],
          correctAnswer: 3,
          explanation: 'St. Louis Rams is correct. This question concerns Super Bowl XXXIV.',
        ),
        Question(
          question: 'Which team won Super Bowl XXXVI?',
          answers: [
            'San Francisco 49ers',
            'Los Angeles Rams',
            'New Orleans Saints',
            'New England Patriots',
          ],
          correctAnswer: 3,
          explanation: 'New England Patriots is correct. This question concerns Super Bowl XXXVI.',
        ),
        Question(
          question: 'Which team won Super Bowl XLII?',
          answers: [
            'Kansas City Chiefs',
            'Chicago Bears',
            'Green Bay Packers',
            'New York Giants',
          ],
          correctAnswer: 3,
          explanation: 'New York Giants is correct. This question concerns Super Bowl XLII.',
        ),
        Question(
          question: 'Which team won Super Bowl XLIII?',
          answers: [
            'New York Giants',
            'Los Angeles Rams',
            'New York Jets',
            'Pittsburgh Steelers',
          ],
          correctAnswer: 3,
          explanation: 'Pittsburgh Steelers is correct. This question concerns Super Bowl XLIII.',
        ),
        Question(
          question: 'Which team won Super Bowl XLIV?',
          answers: [
            'Denver Broncos',
            'Baltimore Colts',
            'New Orleans Saints',
            'Green Bay Packers',
          ],
          correctAnswer: 2,
          explanation: 'New Orleans Saints is correct. This question concerns Super Bowl XLIV.',
        ),
        Question(
          question: 'Which team won Super Bowl XLIX?',
          answers: [
            'New York Jets',
            'St. Louis Rams',
            'New England Patriots',
            'Miami Dolphins',
          ],
          correctAnswer: 2,
          explanation: 'New England Patriots is correct. This question concerns Super Bowl XLIX.',
        ),
        Question(
          question: 'Which team won Super Bowl LI?',
          answers: [
            'Pittsburgh Steelers',
            'Chicago Bears',
            'New England Patriots',
            'Baltimore Colts',
          ],
          correctAnswer: 2,
          explanation: 'New England Patriots is correct. This question concerns Super Bowl LI.',
        ),
        Question(
          question: 'Which team won Super Bowl LIV?',
          answers: [
            'San Francisco 49ers',
            'Miami Dolphins',
            'New Orleans Saints',
            'Kansas City Chiefs',
          ],
          correctAnswer: 3,
          explanation: 'Kansas City Chiefs is correct. This question concerns Super Bowl LIV.',
        ),
        Question(
          question: 'Which team won Super Bowl LVI?',
          answers: [
            'Kansas City Chiefs',
            'Pittsburgh Steelers',
            'Los Angeles Rams',
            'Chicago Bears',
          ],
          correctAnswer: 2,
          explanation: 'Los Angeles Rams is correct. This question concerns Super Bowl LVI.',
        ),
      ],
      'Medium': [
        Question(
          question: 'Which team lost Super Bowl I?',
          answers: [
            'Atlanta Falcons',
            'Green Bay Packers',
            'Baltimore Colts',
            'Kansas City Chiefs',
          ],
          correctAnswer: 3,
          explanation: 'Kansas City Chiefs is correct. This question concerns Super Bowl I.',
        ),
        Question(
          question: 'Which team lost Super Bowl III?',
          answers: [
            'Dallas Cowboys',
            'Tennessee Titans',
            'San Francisco 49ers',
            'Baltimore Colts',
          ],
          correctAnswer: 3,
          explanation: 'Baltimore Colts is correct. This question concerns Super Bowl III.',
        ),
        Question(
          question: 'Which team lost Super Bowl V?',
          answers: [
            'Dallas Cowboys',
            'St. Louis Rams',
            'Kansas City Chiefs',
            'Washington',
          ],
          correctAnswer: 0,
          explanation:
              'Dallas Cowboys is correct. This question concerns Super Bowl V.',
        ),
        Question(
          question: 'Which team lost Super Bowl VII?',
          answers: [
            'Arizona Cardinals',
            'Cincinnati Bengals',
            'Washington',
            'Baltimore Colts',
          ],
          correctAnswer: 2,
          explanation:
              'Washington is correct. This question concerns Super Bowl VII.',
        ),
        Question(
          question: 'Which team lost Super Bowl X?',
          answers: [
            'Green Bay Packers',
            'New England Patriots',
            'Indianapolis Colts',
            'Dallas Cowboys',
          ],
          correctAnswer: 3,
          explanation:
              'Dallas Cowboys is correct. This question concerns Super Bowl X.',
        ),
        Question(
          question: 'Which team lost Super Bowl XIII?',
          answers: [
            'Washington',
            'Dallas Cowboys',
            'Seattle Seahawks',
            'Buffalo Bills',
          ],
          correctAnswer: 1,
          explanation: 'Dallas Cowboys is correct. This question concerns Super Bowl XIII.',
        ),
        Question(
          question: 'Which team lost Super Bowl XVI?',
          answers: [
            'St. Louis Rams',
            'Cincinnati Bengals',
            'Green Bay Packers',
            'Atlanta Falcons',
          ],
          correctAnswer: 1,
          explanation: 'Cincinnati Bengals is correct. This question concerns Super Bowl XVI.',
        ),
        Question(
          question: 'Which team lost Super Bowl XX?',
          answers: [
            'Tennessee Titans',
            'San Francisco 49ers',
            'Arizona Cardinals',
            'New England Patriots',
          ],
          correctAnswer: 3,
          explanation: 'New England Patriots is correct. This question concerns Super Bowl XX.',
        ),
        Question(
          question: 'Which team lost Super Bowl XXIII?',
          answers: [
            'Buffalo Bills',
            'Cincinnati Bengals',
            'Kansas City Chiefs',
            'St. Louis Rams',
          ],
          correctAnswer: 1,
          explanation: 'Cincinnati Bengals is correct. This question concerns Super Bowl XXIII.',
        ),
        Question(
          question: 'Which team lost Super Bowl XXV?',
          answers: [
            'Green Bay Packers',
            'Baltimore Colts',
            'Arizona Cardinals',
            'Buffalo Bills',
          ],
          correctAnswer: 3,
          explanation: 'Buffalo Bills is correct. This question concerns Super Bowl XXV.',
        ),
        Question(
          question: 'Which team lost Super Bowl XXXII?',
          answers: [
            'Indianapolis Colts',
            'Tennessee Titans',
            'Dallas Cowboys',
            'Green Bay Packers',
          ],
          correctAnswer: 3,
          explanation: 'Green Bay Packers is correct. This question concerns Super Bowl XXXII.',
        ),
        Question(
          question: 'Which team lost Super Bowl XXXIV?',
          answers: [
            'St. Louis Rams',
            'Seattle Seahawks',
            'Washington',
            'Tennessee Titans',
          ],
          correctAnswer: 3,
          explanation: 'Tennessee Titans is correct. This question concerns Super Bowl XXXIV.',
        ),
        Question(
          question: 'Which team lost Super Bowl XXXVI?',
          answers: [
            'Arizona Cardinals',
            'Cincinnati Bengals',
            'St. Louis Rams',
            'Atlanta Falcons',
          ],
          correctAnswer: 2,
          explanation: 'St. Louis Rams is correct. This question concerns Super Bowl XXXVI.',
        ),
        Question(
          question: 'Which team lost Super Bowl XLII?',
          answers: [
            'New England Patriots',
            'Indianapolis Colts',
            'San Francisco 49ers',
            'Baltimore Colts',
          ],
          correctAnswer: 0,
          explanation: 'New England Patriots is correct. This question concerns Super Bowl XLII.',
        ),
        Question(
          question: 'Which team lost Super Bowl XLIII?',
          answers: [
            'Arizona Cardinals',
            'Seattle Seahawks',
            'Kansas City Chiefs',
            'Buffalo Bills',
          ],
          correctAnswer: 0,
          explanation: 'Arizona Cardinals is correct. This question concerns Super Bowl XLIII.',
        ),
        Question(
          question: 'Which team lost Super Bowl XLIV?',
          answers: [
            'Green Bay Packers',
            'Atlanta Falcons',
            'Indianapolis Colts',
            'Baltimore Colts',
          ],
          correctAnswer: 2,
          explanation: 'Indianapolis Colts is correct. This question concerns Super Bowl XLIV.',
        ),
        Question(
          question: 'Which team lost Super Bowl XLIX?',
          answers: [
            'Dallas Cowboys',
            'San Francisco 49ers',
            'Seattle Seahawks',
            'Tennessee Titans',
          ],
          correctAnswer: 2,
          explanation: 'Seattle Seahawks is correct. This question concerns Super Bowl XLIX.',
        ),
        Question(
          question: 'Which team lost Super Bowl LI?',
          answers: [
            'Atlanta Falcons',
            'Washington',
            'St. Louis Rams',
            'Kansas City Chiefs',
          ],
          correctAnswer: 0,
          explanation: 'Atlanta Falcons is correct. This question concerns Super Bowl LI.',
        ),
        Question(
          question: 'Which team lost Super Bowl LIV?',
          answers: [
            'Baltimore Colts',
            'San Francisco 49ers',
            'Cincinnati Bengals',
            'Arizona Cardinals',
          ],
          correctAnswer: 1,
          explanation: 'San Francisco 49ers is correct. This question concerns Super Bowl LIV.',
        ),
        Question(
          question: 'Which team lost Super Bowl LVI?',
          answers: [
            'Dallas Cowboys',
            'New England Patriots',
            'Cincinnati Bengals',
            'Indianapolis Colts',
          ],
          correctAnswer: 2,
          explanation: 'Cincinnati Bengals is correct. This question concerns Super Bowl LVI.',
        ),
      ],
      'Hard': [
        Question(
          question: 'Who was named MVP of Super Bowl I?',
          answers: ['Vince Lombardi', 'Max McGee', 'Len Dawson', 'Bart Starr'],
          correctAnswer: 3,
          explanation:
              'Packers quarterback Bart Starr was the MVP of Super Bowl I.',
        ),
        Question(
          question: 'Who guaranteed a Jets victory before Super Bowl III and then earned game MVP?',
          answers: ['Johnny Unitas', 'Matt Snell', 'Joe Namath', 'Don Maynard'],
          correctAnswer: 2,
          explanation: 'Joe Namath famously guaranteed victory and was named MVP after the Jets won Super Bowl III.',
        ),
        Question(
          question: 'Who was MVP of Super Bowl V despite playing for the losing Dallas Cowboys?',
          answers: [
            'Roger Staubach',
            'Johnny Unitas',
            'Mike Curtis',
            'Chuck Howley',
          ],
          correctAnswer: 3,
          explanation: 'Cowboys linebacker Chuck Howley remains the only Super Bowl MVP selected from the losing team.',
        ),
        Question(
          question:
              "What made Miami's Super Bowl VII victory historically unique?",
          answers: [
            'It completed a perfect season',
            'It was the first indoor Super Bowl',
            'It ended a 30-year title drought',
            'It was the first overtime Super Bowl',
          ],
          correctAnswer: 0,
          explanation: "Miami's win completed the NFL's only perfect season of the Super Bowl era.",
        ),
        Question(
          question: 'Who caught the game-winning fourth-quarter touchdown for Pittsburgh in Super Bowl X?',
          answers: [
            'John Stallworth',
            'Rocky Bleier',
            'Lynn Swann',
            'Franco Harris',
          ],
          correctAnswer: 2,
          explanation:
              "Lynn Swann caught a 64-yard touchdown and was the game's MVP.",
        ),
        Question(
          question:
              'Which quarterback led Pittsburgh to victory in Super Bowl XIII?',
          answers: [
            'Bob Griese',
            'Ken Stabler',
            'Roger Staubach',
            'Terry Bradshaw',
          ],
          correctAnswer: 3,
          explanation: "Terry Bradshaw threw four touchdown passes in Pittsburgh's Super Bowl XIII win.",
        ),
        Question(
          question: 'Which quarterback earned MVP of Super Bowl XVI?',
          answers: ['Ken Anderson', 'Dan Marino', 'Joe Montana', 'Phil Simms'],
          correctAnswer: 2,
          explanation: 'Joe Montana led San Francisco over Cincinnati and was named MVP.',
        ),
        Question(
          question:
              "Which defensive player was MVP of Chicago's Super Bowl XX win?",
          answers: [
            'Mike Singletary',
            'Richard Dent',
            'Walter Payton',
            'William Perry',
          ],
          correctAnswer: 1,
          explanation:
              'Defensive end Richard Dent was named Super Bowl XX MVP.',
        ),
        Question(
          question:
              'Who caught the winning touchdown pass late in Super Bowl XXIII?',
          answers: ['Brent Jones', 'Jerry Rice', 'Roger Craig', 'John Taylor'],
          correctAnswer: 3,
          explanation: "John Taylor caught Joe Montana's 10-yard touchdown pass with 34 seconds remaining.",
        ),
        Question(
          question: "Which missed field goal ended Buffalo's chance to win Super Bowl XXV?",
          answers: [
            'Steve Christie’s 42-yard attempt',
            'Matt Bahr’s 50-yard attempt',
            'Scott Norwood’s 47-yard attempt',
            'Gary Anderson’s 46-yard attempt',
          ],
          correctAnswer: 2,
          explanation: "Scott Norwood's 47-yard field-goal attempt went wide right as the Giants won 20–19.",
        ),
        Question(
          question: 'Who was MVP of Super Bowl XXXII after rushing for 157 yards and three touchdowns?',
          answers: [
            'Brett Favre',
            'Terrell Davis',
            'John Elway',
            'Shannon Sharpe',
          ],
          correctAnswer: 1,
          explanation: 'Broncos running back Terrell Davis earned MVP after a dominant rushing performance.',
        ),
        Question(
          question: 'Which Rams player made the tackle at the 1-yard line to preserve the Super Bowl XXXIV victory?',
          answers: [
            'Kurt Warner',
            'London Fletcher',
            'Mike Jones',
            'Kevin Carter',
          ],
          correctAnswer: 2,
          explanation: 'Linebacker Mike Jones tackled Kevin Dyson just short of the goal line on the final play.',
        ),
        Question(
          question: 'Who kicked the winning field goal as time expired in Super Bowl XXXVI?',
          answers: [
            'Mike Vanderjagt',
            'Adam Vinatieri',
            'John Kasay',
            'Jason Elam',
          ],
          correctAnswer: 1,
          explanation: "Adam Vinatieri's 48-yard field goal gave New England its first Super Bowl title.",
        ),
        Question(
          question: 'Which Giants receiver made the famous helmet catch in Super Bowl XLII?',
          answers: [
            'Amani Toomer',
            'David Tyree',
            'Steve Smith',
            'Plaxico Burress',
          ],
          correctAnswer: 1,
          explanation: "David Tyree pinned Eli Manning's pass against his helmet for a pivotal fourth-quarter catch.",
        ),
        Question(
          question: "Who caught Pittsburgh's winning touchdown in the final minute of Super Bowl XLIII?",
          answers: [
            'Heath Miller',
            'Santonio Holmes',
            'Nate Washington',
            'Hines Ward',
          ],
          correctAnswer: 1,
          explanation: 'Santonio Holmes made the toe-tap touchdown catch and was named MVP.',
        ),
        Question(
          question: 'Who was MVP when New Orleans won Super Bowl XLIV?',
          answers: [
            'Tracy Porter',
            'Drew Brees',
            'Reggie Bush',
            'Marques Colston',
          ],
          correctAnswer: 1,
          explanation:
              'Saints quarterback Drew Brees was named Super Bowl XLIV MVP.',
        ),
        Question(
          question: 'Which Patriots player intercepted Russell Wilson at the goal line to seal Super Bowl XLIX?',
          answers: [
            'Devin McCourty',
            'Darrelle Revis',
            'Dont’a Hightower',
            'Malcolm Butler',
          ],
          correctAnswer: 3,
          explanation:
              'Rookie Malcolm Butler intercepted Wilson with 20 seconds left.',
        ),
        Question(
          question: 'What historic deficit did New England overcome to win Super Bowl LI?',
          answers: ['28–3', '24–0', '31–7', '21–3'],
          correctAnswer: 0,
          explanation: 'New England rallied from a 28–3 third-quarter deficit to beat Atlanta in overtime.',
        ),
        Question(
          question: "Who was MVP of Kansas City's victory in Super Bowl LIV?",
          answers: [
            'Travis Kelce',
            'Damien Williams',
            'Patrick Mahomes',
            'Tyreek Hill',
          ],
          correctAnswer: 2,
          explanation: "Patrick Mahomes was named MVP after leading Kansas City's fourth-quarter comeback.",
        ),
        Question(
          question: 'Who caught the go-ahead touchdown for the Rams late in Super Bowl LVI?',
          answers: [
            'Odell Beckham Jr.',
            'Cooper Kupp',
            'Van Jefferson',
            'Tyler Higbee',
          ],
          correctAnswer: 1,
          explanation: "Cooper Kupp caught Matthew Stafford's late touchdown and was named Super Bowl LVI MVP.",
        ),
      ],
    },
    'Green Bay Packers': {
      'Easy': [
        Question(
          question: 'Which Green Bay Packers name is associated with “stadium” and “Green Bay”?',
          answers: [
            'Reggie White',
            'Desmond Howard',
            'Lambeau Field',
            'Vince Lombardi',
          ],
          correctAnswer: 2,
          explanation:
              'Lambeau Field is correct. This question concerns Lambeau Field.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “coach” and “five NFL championships”?',
          answers: [
            'Donald Driver',
            'Bart Starr',
            'Ray Nitschke',
            'Vince Lombardi',
          ],
          correctAnswer: 3,
          explanation: 'Vince Lombardi is correct. This question concerns Vince Lombardi.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “quarterback” and “Super Bowl I MVP”?',
          answers: [
            'Paul Hornung',
            'Bart Starr',
            'Jordy Nelson',
            'Brett Favre',
          ],
          correctAnswer: 1,
          explanation:
              'Bart Starr is correct. This question concerns Bart Starr.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “quarterback” and “three consecutive AP MVP awards”?',
          answers: [
            'Davante Adams',
            'Willie Davis',
            'Brett Favre',
            'Aaron Rodgers',
          ],
          correctAnswer: 2,
          explanation:
              'Brett Favre is correct. This question concerns Brett Favre.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “quarterback” and “Super Bowl XLV MVP”?',
          answers: [
            'Aaron Rodgers',
            'Jerry Kramer',
            'Curly Lambeau',
            'Mike Holmgren',
          ],
          correctAnswer: 0,
          explanation:
              'Aaron Rodgers is correct. This question concerns Aaron Rodgers.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “co-founder and coach” and “team namesake”?',
          answers: ['Max McGee', 'Don Hutson', 'Matt LaFleur', 'Curly Lambeau'],
          correctAnswer: 3,
          explanation:
              'Curly Lambeau is correct. This question concerns Curly Lambeau.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “wide receiver” and “early receiving pioneer”?',
          answers: ['Don Hutson', 'G-Force', 'Desmond Howard', 'Reggie White'],
          correctAnswer: 0,
          explanation:
              'Don Hutson is correct. This question concerns Don Hutson.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “defensive end” and “Minister of Defense”?',
          answers: [
            'Ray Nitschke',
            'Reggie White',
            'Lambeau Field',
            'Donald Driver',
          ],
          correctAnswer: 1,
          explanation:
              'Reggie White is correct. This question concerns Reggie White.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “linebacker” and “number 66”?',
          answers: [
            'Paul Hornung',
            'Ray Nitschke',
            'Vince Lombardi',
            'Jordy Nelson',
          ],
          correctAnswer: 1,
          explanation:
              'Ray Nitschke is correct. This question concerns Ray Nitschke.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “halfback” and “1961 NFL MVP”?',
          answers: [
            'Davante Adams',
            'Bart Starr',
            'Paul Hornung',
            'Willie Davis',
          ],
          correctAnswer: 2,
          explanation:
              'Paul Hornung is correct. This question concerns Paul Hornung.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “defensive end” and “five championship teams”?',
          answers: [
            'Willie Davis',
            'Brett Favre',
            'Jerry Kramer',
            'Mike Holmgren',
          ],
          correctAnswer: 0,
          explanation:
              'Willie Davis is correct. This question concerns Willie Davis.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “guard” and “Ice Bowl block”?',
          answers: [
            'Aaron Rodgers',
            'Jerry Kramer',
            'Max McGee',
            'Matt LaFleur',
          ],
          correctAnswer: 1,
          explanation:
              'Jerry Kramer is correct. This question concerns Jerry Kramer.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “wide receiver” and “first Super Bowl touchdown”?',
          answers: ['G-Force', 'Desmond Howard', 'Max McGee', 'Curly Lambeau'],
          correctAnswer: 2,
          explanation:
              'Max McGee is correct. This question concerns Max McGee.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “return specialist” and “Super Bowl XXXI MVP”?',
          answers: [
            'Desmond Howard',
            'Lambeau Field',
            'Donald Driver',
            'Don Hutson',
          ],
          correctAnswer: 0,
          explanation: 'Desmond Howard is correct. This question concerns Desmond Howard.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “wide receiver” and “franchise receiving yards leader”?',
          answers: [
            'Jordy Nelson',
            'Donald Driver',
            'Reggie White',
            'Vince Lombardi',
          ],
          correctAnswer: 1,
          explanation:
              'Donald Driver is correct. This question concerns Donald Driver.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “wide receiver” and “Super Bowl XLV champion”?',
          answers: [
            'Davante Adams',
            'Bart Starr',
            'Jordy Nelson',
            'Ray Nitschke',
          ],
          correctAnswer: 2,
          explanation:
              'Jordy Nelson is correct. This question concerns Jordy Nelson.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “wide receiver” and “multiple Pro Bowl selections”?',
          answers: [
            'Paul Hornung',
            'Brett Favre',
            'Davante Adams',
            'Mike Holmgren',
          ],
          correctAnswer: 2,
          explanation:
              'Davante Adams is correct. This question concerns Davante Adams.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “head coach” and “Super Bowl XXXI title”?',
          answers: [
            'Aaron Rodgers',
            'Mike Holmgren',
            'Matt LaFleur',
            'Willie Davis',
          ],
          correctAnswer: 1,
          explanation:
              'Mike Holmgren is correct. This question concerns Mike Holmgren.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “head coach” and “hired in 2019”?',
          answers: ['Curly Lambeau', 'Matt LaFleur', 'G-Force', 'Jerry Kramer'],
          correctAnswer: 1,
          explanation:
              'Matt LaFleur is correct. This question concerns Matt LaFleur.',
        ),
        Question(
          question: 'Which Green Bay Packers name is associated with “mascot status” and “Packers have no official mascot”?',
          answers: ['G-Force', 'Lambeau Field', 'Don Hutson', 'Max McGee'],
          correctAnswer: 0,
          explanation: 'G-Force is correct. This question concerns G-Force.',
        ),
      ],
      'Medium': [
        Question(
          question: 'What is Lambeau Field best known as or for within Green Bay Packers history?',
          answers: ['halfback', 'co-founder and coach', 'stadium', 'coach'],
          correctAnswer: 2,
          explanation:
              'stadium is correct. This question concerns Lambeau Field.',
        ),
        Question(
          question: 'What is Vince Lombardi best known as or for within Green Bay Packers history?',
          answers: ['guard', 'coach', 'wide receiver', 'quarterback'],
          correctAnswer: 1,
          explanation:
              'coach is correct. This question concerns Vince Lombardi.',
        ),
        Question(
          question: 'What is Bart Starr best known as or for within Green Bay Packers history?',
          answers: [
            'return specialist',
            'co-founder and coach',
            'quarterback',
            'defensive end',
          ],
          correctAnswer: 2,
          explanation:
              'quarterback is correct. This question concerns Bart Starr.',
        ),
        Question(
          question: 'What is Brett Favre best known as or for within Green Bay Packers history?',
          answers: ['quarterback', 'linebacker', 'head coach', 'wide receiver'],
          correctAnswer: 0,
          explanation:
              'quarterback is correct. This question concerns Brett Favre.',
        ),
        Question(
          question: 'What is Aaron Rodgers best known as or for within Green Bay Packers history?',
          answers: [
            'halfback',
            'mascot status',
            'defensive end',
            'quarterback',
          ],
          correctAnswer: 3,
          explanation:
              'quarterback is correct. This question concerns Aaron Rodgers.',
        ),
        Question(
          question: 'What is Curly Lambeau best known as or for within Green Bay Packers history?',
          answers: ['linebacker', 'stadium', 'guard', 'co-founder and coach'],
          correctAnswer: 3,
          explanation: 'co-founder and coach is correct. This question concerns Curly Lambeau.',
        ),
        Question(
          question: 'What is Don Hutson best known as or for within Green Bay Packers history?',
          answers: ['coach', 'wide receiver', 'halfback', 'return specialist'],
          correctAnswer: 1,
          explanation:
              'wide receiver is correct. This question concerns Don Hutson.',
        ),
        Question(
          question: 'What is Reggie White best known as or for within Green Bay Packers history?',
          answers: ['guard', 'head coach', 'quarterback', 'defensive end'],
          correctAnswer: 3,
          explanation:
              'defensive end is correct. This question concerns Reggie White.',
        ),
        Question(
          question: 'What is Ray Nitschke best known as or for within Green Bay Packers history?',
          answers: [
            'co-founder and coach',
            'linebacker',
            'return specialist',
            'mascot status',
          ],
          correctAnswer: 1,
          explanation:
              'linebacker is correct. This question concerns Ray Nitschke.',
        ),
        Question(
          question: 'What is Paul Hornung best known as or for within Green Bay Packers history?',
          answers: ['head coach', 'wide receiver', 'halfback', 'stadium'],
          correctAnswer: 2,
          explanation:
              'halfback is correct. This question concerns Paul Hornung.',
        ),
        Question(
          question: 'What is Willie Davis best known as or for within Green Bay Packers history?',
          answers: [
            'mascot status',
            'defensive end',
            'return specialist',
            'coach',
          ],
          correctAnswer: 1,
          explanation:
              'defensive end is correct. This question concerns Willie Davis.',
        ),
        Question(
          question: 'What is Jerry Kramer best known as or for within Green Bay Packers history?',
          answers: ['quarterback', 'stadium', 'guard', 'linebacker'],
          correctAnswer: 2,
          explanation: 'guard is correct. This question concerns Jerry Kramer.',
        ),
        Question(
          question: 'What is Max McGee best known as or for within Green Bay Packers history?',
          answers: [
            'co-founder and coach',
            'halfback',
            'wide receiver',
            'coach',
          ],
          correctAnswer: 2,
          explanation:
              'wide receiver is correct. This question concerns Max McGee.',
        ),
        Question(
          question: 'What is Desmond Howard best known as or for within Green Bay Packers history?',
          answers: [
            'quarterback',
            'return specialist',
            'guard',
            'wide receiver',
          ],
          correctAnswer: 1,
          explanation: 'return specialist is correct. This question concerns Desmond Howard.',
        ),
        Question(
          question: 'What is Donald Driver best known as or for within Green Bay Packers history?',
          answers: [
            'wide receiver',
            'return specialist',
            'defensive end',
            'co-founder and coach',
          ],
          correctAnswer: 0,
          explanation:
              'wide receiver is correct. This question concerns Donald Driver.',
        ),
        Question(
          question: 'What is Jordy Nelson best known as or for within Green Bay Packers history?',
          answers: ['head coach', 'wide receiver', 'linebacker', 'quarterback'],
          correctAnswer: 1,
          explanation:
              'wide receiver is correct. This question concerns Jordy Nelson.',
        ),
        Question(
          question: 'What is Davante Adams best known as or for within Green Bay Packers history?',
          answers: [
            'mascot status',
            'halfback',
            'defensive end',
            'wide receiver',
          ],
          correctAnswer: 3,
          explanation:
              'wide receiver is correct. This question concerns Davante Adams.',
        ),
        Question(
          question: 'What is Mike Holmgren best known as or for within Green Bay Packers history?',
          answers: ['stadium', 'guard', 'linebacker', 'head coach'],
          correctAnswer: 3,
          explanation:
              'head coach is correct. This question concerns Mike Holmgren.',
        ),
        Question(
          question: 'What is Matt LaFleur best known as or for within Green Bay Packers history?',
          answers: ['return specialist', 'coach', 'head coach', 'halfback'],
          correctAnswer: 2,
          explanation:
              'head coach is correct. This question concerns Matt LaFleur.',
        ),
        Question(
          question: 'What is G-Force best known as or for within Green Bay Packers history?',
          answers: ['head coach', 'guard', 'quarterback', 'mascot status'],
          correctAnswer: 3,
          explanation:
              'mascot status is correct. This question concerns G-Force.',
        ),
      ],
      'Hard': [
        Question(
          question: 'In what year were the Green Bay Packers founded?',
          answers: ['1933', '1919', '1921', '1946'],
          correctAnswer: 1,
          explanation:
              'Curly Lambeau and George Calhoun founded the Packers in 1919.',
        ),
        Question(
          question: 'Which company gave Curly Lambeau money for uniforms and inspired the Packers name?',
          answers: [
            'Indian Packing Company',
            'Acme Packing Company',
            'Armour and Company',
            'Green Bay Packaging',
          ],
          correctAnswer: 0,
          explanation: 'Lambeau worked for the Indian Packing Company, whose sponsorship helped inspire the team name.',
        ),
        Question(
          question: 'Which Packers coach won the first two Super Bowls?',
          answers: [
            'Vince Lombardi',
            'Curly Lambeau',
            'Dan Devine',
            'Mike Holmgren',
          ],
          correctAnswer: 0,
          explanation: 'Vince Lombardi coached Green Bay to victories in Super Bowls I and II.',
        ),
        Question(
          question:
              'Which quarterback led Green Bay to victory in Super Bowl XXXI?',
          answers: [
            'Aaron Rodgers',
            'Brett Favre',
            'Bart Starr',
            'Don Majkowski',
          ],
          correctAnswer: 1,
          explanation: 'Brett Favre quarterbacked the Packers to a 35–21 win over New England in Super Bowl XXXI.',
        ),
        Question(
          question: 'Who returned a kickoff 99 yards for a touchdown in Super Bowl XXXI?',
          answers: [
            'Antonio Freeman',
            'Robert Brooks',
            'Andre Rison',
            'Desmond Howard',
          ],
          correctAnswer: 3,
          explanation: "Desmond Howard's 99-yard kickoff return helped earn him Super Bowl XXXI MVP.",
        ),
        Question(
          question: 'Which team did Green Bay defeat in Super Bowl XLV?',
          answers: [
            'Denver Broncos',
            'New England Patriots',
            'Seattle Seahawks',
            'Pittsburgh Steelers',
          ],
          correctAnswer: 3,
          explanation: 'Green Bay defeated Pittsburgh 31–25 in Super Bowl XLV.',
        ),
        Question(
          question: 'What number did Packers legend Bart Starr wear?',
          answers: ['4', '15', '12', '66'],
          correctAnswer: 1,
          explanation: 'Bart Starr wore number 15 for Green Bay.',
        ),
        Question(
          question:
              "Which Packers defender was nicknamed the 'Minister of Defense'?",
          answers: [
            'Willie Davis',
            'Ray Nitschke',
            'Clay Matthews',
            'Reggie White',
          ],
          correctAnswer: 3,
          explanation: 'Hall of Fame defensive end Reggie White was famously known as the Minister of Defense.',
        ),
        Question(
          question: 'Which Packers receiver held the franchise record for career receiving yards after retiring in 2012?',
          answers: [
            'Sterling Sharpe',
            'Donald Driver',
            'Don Hutson',
            'Jordy Nelson',
          ],
          correctAnswer: 1,
          explanation: "Donald Driver retired as Green Bay's career leader in receiving yards.",
        ),
        Question(
          question: 'Which famous 1967 playoff game was played in extreme cold at Lambeau Field?',
          answers: [
            'The Ice Bowl',
            'The Freezer Bowl',
            'The Mud Bowl',
            'The Fog Bowl',
          ],
          correctAnswer: 0,
          explanation: 'The NFL Championship between Green Bay and Dallas became known as the Ice Bowl.',
        ),
        Question(
          question: 'Who scored the winning touchdown on a quarterback sneak in the Ice Bowl?',
          answers: [
            'Paul Hornung',
            'Bart Starr',
            'Jim Taylor',
            'Donny Anderson',
          ],
          correctAnswer: 1,
          explanation: 'Bart Starr scored on a sneak behind key blocks from Jerry Kramer and Ken Bowman.',
        ),
        Question(
          question: 'Which Packers executive and coach helped establish the franchise and later had Lambeau Field named for him?',
          answers: [
            'George Halas',
            'Ron Wolf',
            'Curly Lambeau',
            'Vince Lombardi',
          ],
          correctAnswer: 2,
          explanation: 'Curly Lambeau co-founded and coached the Packers; Lambeau Field bears his name.',
        ),
        Question(
          question: 'Which Hall of Fame receiver starred for Green Bay in the 1930s and 1940s and helped transform the passing game?',
          answers: ['Boyd Dowler', 'James Lofton', 'Max McGee', 'Don Hutson'],
          correctAnswer: 3,
          explanation: 'Don Hutson set major receiving records and helped revolutionize the receiver position.',
        ),
        Question(
          question: "What is unusual about the Packers' ownership structure?",
          answers: [
            'They are community-owned by shareholders',
            'They are owned by the city government',
            'They are owned by the NFL',
            'They are owned by a university',
          ],
          correctAnswer: 0,
          explanation: 'The Packers are a nonprofit corporation with hundreds of thousands of community shareholders.',
        ),
        Question(
          question:
              'Which Packers general manager traded for Brett Favre in 1992?',
          answers: ['Mike Sherman', 'Bob Harlan', 'Ron Wolf', 'Ted Thompson'],
          correctAnswer: 2,
          explanation: 'General manager Ron Wolf acquired Brett Favre from Atlanta in 1992.',
        ),
        Question(
          question:
              'Who coached the Packers to the Super Bowl XXXI championship?',
          answers: [
            'Ray Rhodes',
            'Mike Holmgren',
            'Lindy Infante',
            'Mike McCarthy',
          ],
          correctAnswer: 1,
          explanation:
              'Mike Holmgren coached Green Bay to the Super Bowl XXXI title.',
        ),
        Question(
          question: 'Who coached Green Bay to victory in Super Bowl XLV?',
          answers: [
            'Matt LaFleur',
            'Mike Holmgren',
            'Mike McCarthy',
            'Forrest Gregg',
          ],
          correctAnswer: 2,
          explanation: "Mike McCarthy was Green Bay's head coach for the Super Bowl XLV championship.",
        ),
        Question(
          question:
              "Which Packers running back was nicknamed the 'Golden Boy'?",
          answers: [
            'Ahman Green',
            'Jim Taylor',
            'Dorsey Levens',
            'Paul Hornung',
          ],
          correctAnswer: 3,
          explanation: 'Paul Hornung, the 1956 Heisman winner, was known as the Golden Boy.',
        ),
        Question(
          question: 'Which defensive Packers legend wore number 66?',
          answers: [
            'Herb Adderley',
            'Ray Nitschke',
            'Reggie White',
            'Willie Davis',
          ],
          correctAnswer: 1,
          explanation:
              'Hall of Fame linebacker Ray Nitschke famously wore number 66.',
        ),
        Question(
          question: 'Which trophy awarded to the Super Bowl champion is named for a Packers coach?',
          answers: [
            'Vince Lombardi Trophy',
            'George Halas Trophy',
            'Lamar Hunt Trophy',
            'Pete Rozelle Trophy',
          ],
          correctAnswer: 0,
          explanation:
              'The Super Bowl champion receives the Vince Lombardi Trophy.',
        ),
      ],
    },
    'Dallas Cowboys': {
      'Easy': [
        Question(
          question: 'Which Dallas Cowboys name is associated with “stadium” and “Arlington, Texas”?',
          answers: ['AT&T Stadium', 'Jerry Jones', 'Randy White', 'Tom Landry'],
          correctAnswer: 0,
          explanation:
              'AT&T Stadium is correct. This question concerns AT&T Stadium.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “head coach” and “fedora”?',
          answers: [
            'Roger Staubach',
            'Tony Dorsett',
            'Tom Landry',
            'Jason Witten',
          ],
          correctAnswer: 2,
          explanation:
              'Tom Landry is correct. This question concerns Tom Landry.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “quarterback” and “Captain America”?',
          answers: [
            'Tony Romo',
            'Troy Aikman',
            'Roger Staubach',
            'Drew Pearson',
          ],
          correctAnswer: 2,
          explanation: 'Roger Staubach is correct. This question concerns Roger Staubach.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “quarterback” and “Super Bowl XXVII MVP”?',
          answers: [
            'Charles Haley',
            'Troy Aikman',
            'Dak Prescott',
            'Emmitt Smith',
          ],
          correctAnswer: 1,
          explanation:
              'Troy Aikman is correct. This question concerns Troy Aikman.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “running back” and “NFL career rushing leader”?',
          answers: [
            'Emmitt Smith',
            'Deion Sanders',
            'CeeDee Lamb',
            'Michael Irvin',
          ],
          correctAnswer: 0,
          explanation:
              'Emmitt Smith is correct. This question concerns Emmitt Smith.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “wide receiver” and “The Playmaker”?',
          answers: ['Bob Lilly', 'The Star', 'Michael Irvin', 'Jimmy Johnson'],
          correctAnswer: 2,
          explanation:
              'Michael Irvin is correct. This question concerns Michael Irvin.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “defensive tackle” and “Mr. Cowboy”?',
          answers: [
            'America’s Team',
            'Randy White',
            'Jerry Jones',
            'Bob Lilly',
          ],
          correctAnswer: 3,
          explanation:
              'Bob Lilly is correct. This question concerns Bob Lilly.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “defensive tackle” and “Super Bowl XII co-MVP”?',
          answers: [
            'Randy White',
            'AT&T Stadium',
            'Tony Dorsett',
            'Jason Witten',
          ],
          correctAnswer: 0,
          explanation:
              'Randy White is correct. This question concerns Randy White.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “running back” and “99-yard touchdown run”?',
          answers: ['Tony Romo', 'Tony Dorsett', 'Drew Pearson', 'Tom Landry'],
          correctAnswer: 1,
          explanation:
              'Tony Dorsett is correct. This question concerns Tony Dorsett.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “wide receiver” and “original number 88 star”?',
          answers: [
            'Drew Pearson',
            'Roger Staubach',
            'Dak Prescott',
            'Charles Haley',
          ],
          correctAnswer: 0,
          explanation:
              'Drew Pearson is correct. This question concerns Drew Pearson.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “defensive end” and “five Super Bowl rings”?',
          answers: [
            'CeeDee Lamb',
            'Charles Haley',
            'Troy Aikman',
            'Deion Sanders',
          ],
          correctAnswer: 1,
          explanation:
              'Charles Haley is correct. This question concerns Charles Haley.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “cornerback” and “Prime Time”?',
          answers: [
            'The Star',
            'Deion Sanders',
            'Emmitt Smith',
            'Jimmy Johnson',
          ],
          correctAnswer: 1,
          explanation:
              'Deion Sanders is correct. This question concerns Deion Sanders.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “head coach” and “back-to-back Super Bowl wins”?',
          answers: [
            'Jimmy Johnson',
            'Jerry Jones',
            'America’s Team',
            'Michael Irvin',
          ],
          correctAnswer: 0,
          explanation:
              'Jimmy Johnson is correct. This question concerns Jimmy Johnson.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “owner” and “bought team in 1989”?',
          answers: ['AT&T Stadium', 'Bob Lilly', 'Jason Witten', 'Jerry Jones'],
          correctAnswer: 3,
          explanation:
              'Jerry Jones is correct. This question concerns Jerry Jones.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “tight end” and “franchise receptions leader”?',
          answers: ['Tony Romo', 'Jason Witten', 'Tom Landry', 'Randy White'],
          correctAnswer: 1,
          explanation:
              'Jason Witten is correct. This question concerns Jason Witten.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “quarterback” and “undrafted free agent”?',
          answers: [
            'Tony Romo',
            'Tony Dorsett',
            'Dak Prescott',
            'Roger Staubach',
          ],
          correctAnswer: 0,
          explanation:
              'Tony Romo is correct. This question concerns Tony Romo.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “quarterback” and “2016 Offensive Rookie of the Year”?',
          answers: [
            'Dak Prescott',
            'CeeDee Lamb',
            'Troy Aikman',
            'Drew Pearson',
          ],
          correctAnswer: 0,
          explanation:
              'Dak Prescott is correct. This question concerns Dak Prescott.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “wide receiver” and “number 88”?',
          answers: ['Charles Haley', 'Emmitt Smith', 'CeeDee Lamb', 'The Star'],
          correctAnswer: 2,
          explanation:
              'CeeDee Lamb is correct. This question concerns CeeDee Lamb.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “team logo” and “single blue star”?',
          answers: [
            'The Star',
            'Michael Irvin',
            'Deion Sanders',
            'America’s Team',
          ],
          correctAnswer: 0,
          explanation: 'The Star is correct. This question concerns The Star.',
        ),
        Question(
          question: 'Which Dallas Cowboys name is associated with “nickname” and “popularized in 1978”?',
          answers: [
            'Jimmy Johnson',
            'Bob Lilly',
            'America’s Team',
            'AT&T Stadium',
          ],
          correctAnswer: 2,
          explanation: 'America’s Team is correct. This question concerns America’s Team.',
        ),
      ],
      'Medium': [
        Question(
          question: 'What is AT&T Stadium best known as or for within Dallas Cowboys history?',
          answers: ['stadium', 'head coach', 'running back', 'cornerback'],
          correctAnswer: 0,
          explanation:
              'stadium is correct. This question concerns AT&T Stadium.',
        ),
        Question(
          question: 'What is Tom Landry best known as or for within Dallas Cowboys history?',
          answers: ['quarterback', 'head coach', 'owner', 'wide receiver'],
          correctAnswer: 1,
          explanation:
              'head coach is correct. This question concerns Tom Landry.',
        ),
        Question(
          question: 'What is Roger Staubach best known as or for within Dallas Cowboys history?',
          answers: [
            'running back',
            'quarterback',
            'tight end',
            'defensive tackle',
          ],
          correctAnswer: 1,
          explanation:
              'quarterback is correct. This question concerns Roger Staubach.',
        ),
        Question(
          question: 'What is Troy Aikman best known as or for within Dallas Cowboys history?',
          answers: [
            'quarterback',
            'team logo',
            'wide receiver',
            'defensive end',
          ],
          correctAnswer: 0,
          explanation:
              'quarterback is correct. This question concerns Troy Aikman.',
        ),
        Question(
          question: 'What is Emmitt Smith best known as or for within Dallas Cowboys history?',
          answers: [
            'nickname',
            'running back',
            'defensive tackle',
            'cornerback',
          ],
          correctAnswer: 1,
          explanation:
              'running back is correct. This question concerns Emmitt Smith.',
        ),
        Question(
          question: 'What is Michael Irvin best known as or for within Dallas Cowboys history?',
          answers: ['wide receiver', 'stadium', 'defensive end', 'owner'],
          correctAnswer: 0,
          explanation:
              'wide receiver is correct. This question concerns Michael Irvin.',
        ),
        Question(
          question: 'What is Bob Lilly best known as or for within Dallas Cowboys history?',
          answers: [
            'tight end',
            'head coach',
            'defensive tackle',
            'cornerback',
          ],
          correctAnswer: 2,
          explanation:
              'defensive tackle is correct. This question concerns Bob Lilly.',
        ),
        Question(
          question: 'What is Randy White best known as or for within Dallas Cowboys history?',
          answers: ['defensive tackle', 'team logo', 'quarterback', 'owner'],
          correctAnswer: 0,
          explanation: 'defensive tackle is correct. This question concerns Randy White.',
        ),
        Question(
          question: 'What is Tony Dorsett best known as or for within Dallas Cowboys history?',
          answers: ['running back', 'cornerback', 'nickname', 'tight end'],
          correctAnswer: 0,
          explanation:
              'running back is correct. This question concerns Tony Dorsett.',
        ),
        Question(
          question: 'What is Drew Pearson best known as or for within Dallas Cowboys history?',
          answers: ['wide receiver', 'team logo', 'owner', 'stadium'],
          correctAnswer: 0,
          explanation:
              'wide receiver is correct. This question concerns Drew Pearson.',
        ),
        Question(
          question: 'What is Charles Haley best known as or for within Dallas Cowboys history?',
          answers: [
            'defensive end',
            'defensive tackle',
            'head coach',
            'nickname',
          ],
          correctAnswer: 0,
          explanation:
              'defensive end is correct. This question concerns Charles Haley.',
        ),
        Question(
          question: 'What is Deion Sanders best known as or for within Dallas Cowboys history?',
          answers: ['quarterback', 'cornerback', 'stadium', 'defensive end'],
          correctAnswer: 1,
          explanation:
              'cornerback is correct. This question concerns Deion Sanders.',
        ),
        Question(
          question: 'What is Jimmy Johnson best known as or for within Dallas Cowboys history?',
          answers: ['cornerback', 'head coach', 'running back', 'nickname'],
          correctAnswer: 1,
          explanation:
              'head coach is correct. This question concerns Jimmy Johnson.',
        ),
        Question(
          question: 'What is Jerry Jones best known as or for within Dallas Cowboys history?',
          answers: ['owner', 'wide receiver', 'stadium', 'quarterback'],
          correctAnswer: 0,
          explanation: 'owner is correct. This question concerns Jerry Jones.',
        ),
        Question(
          question: 'What is Jason Witten best known as or for within Dallas Cowboys history?',
          answers: [
            'tight end',
            'head coach',
            'defensive tackle',
            'running back',
          ],
          correctAnswer: 0,
          explanation:
              'tight end is correct. This question concerns Jason Witten.',
        ),
        Question(
          question: 'What is Tony Romo best known as or for within Dallas Cowboys history?',
          answers: [
            'wide receiver',
            'defensive end',
            'team logo',
            'quarterback',
          ],
          correctAnswer: 3,
          explanation:
              'quarterback is correct. This question concerns Tony Romo.',
        ),
        Question(
          question: 'What is Dak Prescott best known as or for within Dallas Cowboys history?',
          answers: [
            'quarterback',
            'defensive tackle',
            'cornerback',
            'nickname',
          ],
          correctAnswer: 0,
          explanation:
              'quarterback is correct. This question concerns Dak Prescott.',
        ),
        Question(
          question: 'What is CeeDee Lamb best known as or for within Dallas Cowboys history?',
          answers: ['stadium', 'wide receiver', 'defensive end', 'owner'],
          correctAnswer: 1,
          explanation:
              'wide receiver is correct. This question concerns CeeDee Lamb.',
        ),
        Question(
          question: 'What is The Star best known as or for within Dallas Cowboys history?',
          answers: ['cornerback', 'tight end', 'head coach', 'team logo'],
          correctAnswer: 3,
          explanation: 'team logo is correct. This question concerns The Star.',
        ),
        Question(
          question: 'What is America’s Team best known as or for within Dallas Cowboys history?',
          answers: ['owner', 'team logo', 'quarterback', 'nickname'],
          correctAnswer: 3,
          explanation:
              'nickname is correct. This question concerns America’s Team.',
        ),
      ],
      'Hard': [
        Question(
          question:
              'In what year did the Dallas Cowboys begin play in the NFL?',
          answers: ['1952', '1966', '1970', '1960'],
          correctAnswer: 3,
          explanation: 'The Dallas Cowboys entered the NFL as an expansion team in 1960.',
        ),
        Question(
          question: "Who was the Cowboys' first head coach?",
          answers: [
            'Tom Landry',
            'Barry Switzer',
            'Tex Schramm',
            'Jimmy Johnson',
          ],
          correctAnswer: 0,
          explanation:
              "Tom Landry became the franchise's first head coach in 1960.",
        ),
        Question(
          question:
              "Which Cowboys quarterback was nicknamed 'Captain America'?",
          answers: [
            'Tony Romo',
            'Danny White',
            'Roger Staubach',
            'Troy Aikman',
          ],
          correctAnswer: 2,
          explanation: 'Roger Staubach was widely known as Captain America.',
        ),
        Question(
          question: "Which Cowboys running back remains the NFL's career rushing leader?",
          answers: [
            'Herschel Walker',
            'Tony Dorsett',
            'Ezekiel Elliott',
            'Emmitt Smith',
          ],
          correctAnswer: 3,
          explanation: 'Emmitt Smith retired with 18,355 rushing yards, the NFL career record.',
        ),
        Question(
          question: 'Who was the MVP of Super Bowl XXVII?',
          answers: [
            'Troy Aikman',
            'Emmitt Smith',
            'Charles Haley',
            'Michael Irvin',
          ],
          correctAnswer: 0,
          explanation: 'Troy Aikman threw four touchdowns and was named Super Bowl XXVII MVP.',
        ),
        Question(
          question:
              "Which Cowboys defensive tackle was nicknamed 'Mr. Cowboy'?",
          answers: ['Jethro Pugh', 'Leon Lett', 'Bob Lilly', 'Randy White'],
          correctAnswer: 2,
          explanation: 'Hall of Fame defensive tackle Bob Lilly was known as Mr. Cowboy.',
        ),
        Question(
          question: 'Which two Cowboys defenders shared MVP honors in Super Bowl XII?',
          answers: [
            'Bob Lilly and Randy White',
            'Randy White and Harvey Martin',
            'Charles Haley and Ken Norton Jr.',
            'Deion Sanders and Darren Woodson',
          ],
          correctAnswer: 1,
          explanation:
              'Randy White and Harvey Martin were co-MVPs of Super Bowl XII.',
        ),
        Question(
          question: 'Which Cowboys player set an NFL record with a 99-yard touchdown run in the 1982 season?',
          answers: [
            'Tony Dorsett',
            'Herschel Walker',
            'Calvin Hill',
            'Emmitt Smith',
          ],
          correctAnswer: 0,
          explanation: 'Tony Dorsett ran 99 yards for a touchdown against Minnesota in January 1983.',
        ),
        Question(
          question: "Which receiver caught Roger Staubach's famous 'Hail Mary' pass in the 1975 playoffs?",
          answers: [
            'Golden Richards',
            'Tony Hill',
            'Drew Pearson',
            'Butch Johnson',
          ],
          correctAnswer: 2,
          explanation: "Drew Pearson caught the late 50-yard touchdown that popularized the term 'Hail Mary.'",
        ),
        Question(
          question: 'Who purchased the Cowboys in 1989?',
          answers: [
            'Tex Schramm',
            'Clint Murchison Jr.',
            'Bum Bright',
            'Jerry Jones',
          ],
          correctAnswer: 3,
          explanation: 'Jerry Jones purchased the Cowboys in 1989.',
        ),
        Question(
          question: 'Which college coach became Cowboys head coach immediately after Jerry Jones bought the team?',
          answers: [
            'Dave Campo',
            'Jimmy Johnson',
            'Barry Switzer',
            'Chan Gailey',
          ],
          correctAnswer: 1,
          explanation: 'Jimmy Johnson left the University of Miami to coach Dallas in 1989.',
        ),
        Question(
          question: 'Which franchise did Dallas defeat in both Super Bowl XXVII and Super Bowl XXVIII?',
          answers: [
            'Denver Broncos',
            'Buffalo Bills',
            'Pittsburgh Steelers',
            'San Francisco 49ers',
          ],
          correctAnswer: 1,
          explanation: 'Dallas defeated Buffalo in consecutive Super Bowls following the 1992 and 1993 seasons.',
        ),
        Question(
          question: 'Which team did Dallas defeat in Super Bowl XXX?',
          answers: [
            'Denver Broncos',
            'Pittsburgh Steelers',
            'Miami Dolphins',
            'Buffalo Bills',
          ],
          correctAnswer: 1,
          explanation: 'Dallas defeated Pittsburgh 27–17 in Super Bowl XXX.',
        ),
        Question(
          question: "Which Cowboys tight end became the franchise's longtime leader in career receptions?",
          answers: [
            'Jason Witten',
            'Billy Joe DuPree',
            'Jay Novacek',
            'Doug Cosbie',
          ],
          correctAnswer: 0,
          explanation:
              "Jason Witten became the Cowboys' career leader in receptions.",
        ),
        Question(
          question:
              "Which undrafted quarterback became Dallas's starter in 2006?",
          answers: [
            'Dak Prescott',
            'Quincy Carter',
            'Danny White',
            'Tony Romo',
          ],
          correctAnswer: 3,
          explanation: 'Tony Romo joined Dallas as an undrafted free agent and became the starting quarterback in 2006.',
        ),
        Question(
          question: 'Which quarterback won NFL Offensive Rookie of the Year after replacing an injured Tony Romo in 2016?',
          answers: [
            'Drew Henson',
            'Dak Prescott',
            'Steve Walsh',
            'Troy Aikman',
          ],
          correctAnswer: 1,
          explanation: 'Dak Prescott became the starter as a rookie and won AP Offensive Rookie of the Year.',
        ),
        Question(
          question:
              "What is the name commonly used for the Cowboys' blue-star logo?",
          answers: [
            'Cowboy Blue',
            'The Star',
            'The Lone Star Seal',
            'The Texas Mark',
          ],
          correctAnswer: 1,
          explanation:
              "The Cowboys' simple blue star is commonly called The Star.",
        ),
        Question(
          question: 'Which nickname for the Cowboys was popularized by an NFL Films highlight title in the late 1970s?',
          answers: [
            'Big D',
            'Lone Star Boys',
            'Doomsday Team',
            'America\'s Team',
          ],
          correctAnswer: 3,
          explanation: "The nickname 'America's Team' was popularized by an NFL Films highlight production in 1978.",
        ),
        Question(
          question: 'Which defensive unit nickname was associated with the Cowboys of the Landry era?',
          answers: [
            'Orange Crush',
            'Purple People Eaters',
            'Steel Curtain',
            'Doomsday Defense',
          ],
          correctAnswer: 3,
          explanation: "Dallas's feared defenses of the Landry era were known as the Doomsday Defense.",
        ),
        Question(
          question:
              "Which Cowboys owner also serves as the team's general manager?",
          answers: [
            'Stephen Jones',
            'Charlotte Jones',
            'Jerry Jones',
            'Jimmy Johnson',
          ],
          correctAnswer: 2,
          explanation: 'Owner Jerry Jones has long held the general manager title as well.',
        ),
      ],
    },
  },
};
