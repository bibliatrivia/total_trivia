import '../expanded_questions.dart';
import '../../models/question.dart';

List<Question> _legacyBookEasy(String topic) =>
    expandedQuestionBanks['Good Books']?[topic]?['Easy'] ?? <Question>[];

final Map<String, List<Question>> _classicLiteratureAdditions = {
  'Easy': [
    Question(
      question: 'Which English novelist published Pride and Prejudice in 1813?',
      answers: [
        'Jane Austen',
        'Charlotte Brontë',
        'George Eliot',
        'Elizabeth Gaskell',
      ],
      correctAnswer: 0,
      explanation: 'Jane Austen published Pride and Prejudice in 1813.',
    ),
    Question(
      question: 'Which English novelist published Jane Eyre under the pen name Currer Bell?',
      answers: [
        'Emily Brontë',
        'Oscar Wilde',
        'Fyodor Dostoevsky',
        'Charlotte Brontë',
      ],
      correctAnswer: 3,
      explanation: 'Charlotte Brontë wrote Jane Eyre.',
    ),
    Question(
      question: 'Which novelist published Wuthering Heights under the pen name Ellis Bell?',
      answers: [
        'Bram Stoker',
        'Fyodor Dostoevsky',
        'Emily Brontë',
        'Charles Dickens',
      ],
      correctAnswer: 2,
      explanation: 'Emily Brontë wrote Wuthering Heights.',
    ),
    Question(
      question: 'Which Victorian novelist published Great Expectations?',
      answers: [
        'Franz Kafka',
        'Charles Dickens',
        'Herman Melville',
        'Alexandre Dumas',
      ],
      correctAnswer: 1,
      explanation: 'Charles Dickens wrote Great Expectations.',
    ),
    Question(
      question: 'Which novelist wrote A Tale of Two Cities, set partly during the French Revolution?',
      answers: [
        'Charles Dickens',
        'Nathaniel Hawthorne',
        'Victor Hugo',
        'Franz Kafka',
      ],
      correctAnswer: 0,
      explanation: 'Charles Dickens wrote A Tale of Two Cities.',
    ),
    Question(
      question: 'Which American novelist wrote Moby-Dick?',
      answers: [
        'Nathaniel Hawthorne',
        'Victor Hugo',
        'Franz Kafka',
        'Herman Melville',
      ],
      correctAnswer: 3,
      explanation: 'Herman Melville wrote Moby-Dick.',
    ),
    Question(
      question: 'Which American novelist wrote The Scarlet Letter?',
      answers: [
        'Gustave Flaubert',
        'Albert Camus',
        'Nathaniel Hawthorne',
        'Louisa May Alcott',
      ],
      correctAnswer: 2,
      explanation: 'Nathaniel Hawthorne wrote The Scarlet Letter.',
    ),
    Question(
      question: 'Which American novelist wrote Little Women?',
      answers: [
        'John Steinbeck',
        'Louisa May Alcott',
        'Mark Twain',
        'Leo Tolstoy',
      ],
      correctAnswer: 1,
      explanation: 'Louisa May Alcott wrote Little Women.',
    ),
    Question(
      question: 'Which author published The Adventures of Huckleberry Finn under the name Mark Twain?',
      answers: [
        'Mark Twain',
        'Oscar Wilde',
        'Fyodor Dostoevsky',
        'John Steinbeck',
      ],
      correctAnswer: 0,
      explanation: 'Mark Twain wrote The Adventures of Huckleberry Finn.',
    ),
    Question(
      question: 'Which Irish writer wrote The Picture of Dorian Gray?',
      answers: [
        'Bram Stoker',
        'Fyodor Dostoevsky',
        'F. Scott Fitzgerald',
        'Oscar Wilde',
      ],
      correctAnswer: 3,
      explanation: 'Oscar Wilde wrote The Picture of Dorian Gray.',
    ),
  ],
  'Medium': [
    Question(
      question: 'Which book by Bram Stoker was first published in 1897?',
      answers: [
        'War and Peace',
        'The Sun Also Rises',
        'Dracula',
        'Frankenstein',
      ],
      correctAnswer: 2,
      explanation: 'Dracula by Bram Stoker was first published in 1897.',
    ),
    Question(
      question: 'Which book by Mary Shelley was first published in 1818?',
      answers: [
        'A Farewell to Arms',
        'Frankenstein',
        'The Count of Monte Cristo',
        'The Metamorphosis',
      ],
      correctAnswer: 1,
      explanation: 'Frankenstein by Mary Shelley was first published in 1818.',
    ),
    Question(
      question: 'Which book by Alexandre Dumas was first published in 1844?',
      answers: [
        'The Count of Monte Cristo',
        'Les Misérables',
        'The Trial',
        'Their Eyes Were Watching God',
      ],
      correctAnswer: 0,
      explanation: 'The Count of Monte Cristo by Alexandre Dumas was first published in 1844.',
    ),
    Question(
      question: 'Which book by Victor Hugo was first published in 1862?',
      answers: [
        'Madame Bovary',
        'The Stranger',
        'Invisible Man',
        'Les Misérables',
      ],
      correctAnswer: 3,
      explanation: 'Les Misérables by Victor Hugo was first published in 1862.',
    ),
    Question(
      question: 'Which book by Gustave Flaubert was first published in 1857?',
      answers: [
        'The Grapes of Wrath',
        'To Kill a Mockingbird',
        'Madame Bovary',
        'Anna Karenina',
      ],
      correctAnswer: 2,
      explanation:
          'Madame Bovary by Gustave Flaubert was first published in 1857.',
    ),
    Question(
      question: 'Which book by Leo Tolstoy was first published in 1878?',
      answers: [
        'The Age of Innocence',
        'Anna Karenina',
        'Crime and Punishment',
        'Of Mice and Men',
      ],
      correctAnswer: 1,
      explanation: 'Anna Karenina by Leo Tolstoy was first published in 1878.',
    ),
    Question(
      question: 'Which book by Fyodor Dostoevsky was first published in 1866?',
      answers: [
        'Crime and Punishment',
        'The Brothers Karamazov',
        'The Great Gatsby',
        'The House of Mirth',
      ],
      correctAnswer: 0,
      explanation: 'Crime and Punishment by Fyodor Dostoevsky was first published in 1866.',
    ),
    Question(
      question: 'Which book by Fyodor Dostoevsky was first published in 1880?',
      answers: [
        'War and Peace',
        'The Sun Also Rises',
        'The Awakening',
        'The Brothers Karamazov',
      ],
      correctAnswer: 3,
      explanation: 'The Brothers Karamazov by Fyodor Dostoevsky was first published in 1880.',
    ),
    Question(
      question: 'Which book by Leo Tolstoy was first published in 1869?',
      answers: [
        'A Farewell to Arms',
        'The Red Badge of Courage',
        'War and Peace',
        'The Metamorphosis',
      ],
      correctAnswer: 2,
      explanation: 'War and Peace by Leo Tolstoy was first published in 1869.',
    ),
    Question(
      question: 'Which book by Franz Kafka was first published in 1915?',
      answers: [
        'Heart of Darkness',
        'The Metamorphosis',
        'The Trial',
        'Their Eyes Were Watching God',
      ],
      correctAnswer: 1,
      explanation:
          'The Metamorphosis by Franz Kafka was first published in 1915.',
    ),
    Question(
      question: 'Which book by Franz Kafka was first published in 1925?',
      answers: [
        'The Trial',
        'The Stranger',
        'Invisible Man',
        'The Portrait of a Lady',
      ],
      correctAnswer: 0,
      explanation: 'The Trial by Franz Kafka was first published in 1925.',
    ),
    Question(
      question: 'Which book by Albert Camus was first published in 1942?',
      answers: [
        'The Grapes of Wrath',
        'To Kill a Mockingbird',
        'Middlemarch',
        'The Stranger',
      ],
      correctAnswer: 3,
      explanation: 'The Stranger by Albert Camus was first published in 1942.',
    ),
    Question(
      question: 'Which book by John Steinbeck was first published in 1939?',
      answers: [
        'The Age of Innocence',
        'Tess of the d\'Urbervilles',
        'The Grapes of Wrath',
        'Of Mice and Men',
      ],
      correctAnswer: 2,
      explanation:
          'The Grapes of Wrath by John Steinbeck was first published in 1939.',
    ),
    Question(
      question: 'Which book by John Steinbeck was first published in 1937?',
      answers: [
        'Far from the Madding Crowd',
        'Of Mice and Men',
        'The Great Gatsby',
        'The House of Mirth',
      ],
      correctAnswer: 1,
      explanation:
          'Of Mice and Men by John Steinbeck was first published in 1937.',
    ),
    Question(
      question:
          'Which book by F. Scott Fitzgerald was first published in 1925?',
      answers: [
        'The Great Gatsby',
        'The Sun Also Rises',
        'The Awakening',
        'North and South',
      ],
      correctAnswer: 0,
      explanation: 'The Great Gatsby by F. Scott Fitzgerald was first published in 1925.',
    ),
    Question(
      question: 'Which book by Ernest Hemingway was first published in 1926?',
      answers: [
        'A Farewell to Arms',
        'The Red Badge of Courage',
        'Vanity Fair',
        'The Sun Also Rises',
      ],
      correctAnswer: 3,
      explanation:
          'The Sun Also Rises by Ernest Hemingway was first published in 1926.',
    ),
    Question(
      question: 'Which book by Ernest Hemingway was first published in 1929?',
      answers: [
        'Heart of Darkness',
        'The Woman in White',
        'A Farewell to Arms',
        'Their Eyes Were Watching God',
      ],
      correctAnswer: 2,
      explanation:
          'A Farewell to Arms by Ernest Hemingway was first published in 1929.',
    ),
    Question(
      question: 'Which book by Zora Neale Hurston was first published in 1937?',
      answers: [
        'The Moonstone',
        'Their Eyes Were Watching God',
        'Invisible Man',
        'The Portrait of a Lady',
      ],
      correctAnswer: 1,
      explanation: 'Their Eyes Were Watching God by Zora Neale Hurston was first published in 1937.',
    ),
    Question(
      question: 'Which book by Ralph Ellison was first published in 1952?',
      answers: [
        'Invisible Man',
        'To Kill a Mockingbird',
        'Middlemarch',
        'The Time Machine',
      ],
      correctAnswer: 0,
      explanation:
          'Invisible Man by Ralph Ellison was first published in 1952.',
    ),
    Question(
      question: 'Which book by Harper Lee was first published in 1960?',
      answers: [
        'The Age of Innocence',
        'Tess of the d\'Urbervilles',
        'The War of the Worlds',
        'To Kill a Mockingbird',
      ],
      correctAnswer: 3,
      explanation:
          'To Kill a Mockingbird by Harper Lee was first published in 1960.',
    ),
  ],
  'Hard': [
    Question(
      question: 'In what year was The Age of Innocence first published?',
      answers: ['1903', '1861', '1920', '1881'],
      correctAnswer: 2,
      explanation: 'The Age of Innocence was first published in 1920.',
    ),
    Question(
      question: 'In what year was The House of Mirth first published?',
      answers: ['1859', '1905', '1871', '1906'],
      correctAnswer: 1,
      explanation: 'The House of Mirth was first published in 1905.',
    ),
    Question(
      question: 'In what year was The Awakening first published?',
      answers: ['1899', '1891', '1913', '1851'],
      correctAnswer: 0,
      explanation: 'The Awakening was first published in 1899.',
    ),
    Question(
      question: 'In what year was The Red Badge of Courage first published?',
      answers: ['1874', '1908', '1850', '1895'],
      correctAnswer: 3,
      explanation: 'The Red Badge of Courage was first published in 1895.',
    ),
    Question(
      question: 'In what year was Heart of Darkness first published?',
      answers: ['1910', '1868', '1899', '1855'],
      correctAnswer: 2,
      explanation: 'Heart of Darkness was first published in 1899.',
    ),
    Question(
      question: 'In what year was The Portrait of a Lady first published?',
      answers: ['1884', '1881', '1848', '1813'],
      correctAnswer: 1,
      explanation: 'The Portrait of a Lady was first published in 1881.',
    ),
    Question(
      question: 'In what year was Middlemarch first published?',
      answers: ['1871', '1898', '1847', '1890'],
      correctAnswer: 0,
      explanation: 'Middlemarch was first published in 1871.',
    ),
    Question(
      question: 'In what year was Tess of the d\'Urbervilles first published?',
      answers: ['1903', '1861', '1897', '1891'],
      correctAnswer: 3,
      explanation: 'Tess of the d\'Urbervilles was first published in 1891.',
    ),
    Question(
      question: 'In what year was Far from the Madding Crowd first published?',
      answers: ['1859', '1818', '1874', '1906'],
      correctAnswer: 2,
      explanation: 'Far from the Madding Crowd was first published in 1874.',
    ),
    Question(
      question: 'In what year was North and South first published?',
      answers: ['1844', '1855', '1913', '1851'],
      correctAnswer: 1,
      explanation: 'North and South was first published in 1855.',
    ),
    Question(
      question: 'In what year was Vanity Fair first published?',
      answers: ['1848', '1908', '1850', '1862'],
      correctAnswer: 0,
      explanation: 'Vanity Fair was first published in 1848.',
    ),
    Question(
      question: 'In what year was The Woman in White first published?',
      answers: ['1910', '1884', '1878', '1859'],
      correctAnswer: 3,
      explanation: 'The Woman in White was first published in 1859.',
    ),
    Question(
      question: 'In what year was The Moonstone first published?',
      answers: ['1890', '1866', '1868', '1813'],
      correctAnswer: 2,
      explanation: 'The Moonstone was first published in 1868.',
    ),
    Question(
      question: 'In what year was The Time Machine first published?',
      answers: ['1866', '1895', '1847', '1890'],
      correctAnswer: 1,
      explanation: 'The Time Machine was first published in 1895.',
    ),
    Question(
      question: 'In what year was The War of the Worlds first published?',
      answers: ['1898', '1861', '1897', '1880'],
      correctAnswer: 0,
      explanation: 'The War of the Worlds was first published in 1898.',
    ),
    Question(
      question: 'In what year was The Call of the Wild first published?',
      answers: ['1859', '1818', '1869', '1903'],
      correctAnswer: 3,
      explanation: 'The Call of the Wild was first published in 1903.',
    ),
    Question(
      question: 'In what year was The Jungle first published?',
      answers: ['1844', '1915', '1906', '1851'],
      correctAnswer: 2,
      explanation: 'The Jungle was first published in 1906.',
    ),
    Question(
      question: 'In what year was Sons and Lovers first published?',
      answers: ['1925', '1913', '1850', '1862'],
      correctAnswer: 1,
      explanation: 'Sons and Lovers was first published in 1913.',
    ),
    Question(
      question: 'In what year was A Room with a View first published?',
      answers: ['1908', '1868', '1857', '1942'],
      correctAnswer: 0,
      explanation: 'A Room with a View was first published in 1908.',
    ),
    Question(
      question: 'In what year was Howards End first published?',
      answers: ['1884', '1878', '1939', '1910'],
      correctAnswer: 3,
      explanation: 'Howards End was first published in 1910.',
    ),
  ],
};
final Map<String, List<Question>> _fictionAdditions = {
  'Easy': [
    Question(
      question: 'Identify the author of Beloved.',
      answers: [
        'Toni Morrison',
        'Margaret Atwood',
        'Donna Tartt',
        'Erin Morgenstern',
      ],
      correctAnswer: 0,
      explanation: 'Toni Morrison wrote Beloved.',
    ),
    Question(
      question: 'Who wrote The Handmaid\'s Tale?',
      answers: [
        'Kazuo Ishiguro',
        'Donna Tartt',
        'Emily St. John Mandel',
        'Margaret Atwood',
      ],
      correctAnswer: 3,
      explanation: 'Margaret Atwood wrote The Handmaid\'s Tale.',
    ),
    Question(
      question: 'Identify the author of The Remains of the Day.',
      answers: [
        'Colson Whitehead',
        'Sally Rooney',
        'Kazuo Ishiguro',
        'Yann Martel',
      ],
      correctAnswer: 2,
      explanation: 'Kazuo Ishiguro wrote The Remains of the Day.',
    ),
    Question(
      question: 'Identify the author of Life of Pi.',
      answers: [
        'Sally Rooney',
        'Yann Martel',
        'Cormac McCarthy',
        'Colson Whitehead',
      ],
      correctAnswer: 1,
      explanation: 'Yann Martel wrote Life of Pi.',
    ),
    Question(
      question: 'Identify the author of The Road.',
      answers: [
        'Cormac McCarthy',
        'Khaled Hosseini',
        'Colson Whitehead',
        'Min Jin Lee',
      ],
      correctAnswer: 0,
      explanation: 'Cormac McCarthy wrote The Road.',
    ),
    Question(
      question: 'Identify the author of The Kite Runner.',
      answers: [
        'Markus Zusak',
        'David Mitchell',
        'Richard Powers',
        'Khaled Hosseini',
      ],
      correctAnswer: 3,
      explanation: 'Khaled Hosseini wrote The Kite Runner.',
    ),
    Question(
      question: 'Identify the author of The Book Thief.',
      answers: ['Mark Haddon', 'Michael Chabon', 'Markus Zusak', 'Ian McEwan'],
      correctAnswer: 2,
      explanation: 'Markus Zusak wrote The Book Thief.',
    ),
    Question(
      question: 'Identify the author of Atonement.',
      answers: [
        'Jeffrey Eugenides',
        'Ian McEwan',
        'Donna Tartt',
        'Erin Morgenstern',
      ],
      correctAnswer: 1,
      explanation: 'Ian McEwan wrote Atonement.',
    ),
    Question(
      question: 'Identify the author of The Secret History.',
      answers: [
        'Donna Tartt',
        'Kazuo Ishiguro',
        'Viet Thanh Nguyen',
        'Jennifer Egan',
      ],
      correctAnswer: 0,
      explanation: 'Donna Tartt wrote The Secret History.',
    ),
    Question(
      question: 'Identify the author of The Goldfinch.',
      answers: [
        'Colson Whitehead',
        'Sally Rooney',
        'George Saunders',
        'Donna Tartt',
      ],
      correctAnswer: 3,
      explanation: 'Donna Tartt wrote The Goldfinch.',
    ),
  ],
  'Medium': [
    Question(
      question: 'Which book by Kazuo Ishiguro was first published in 2005?',
      answers: [
        'Normal People',
        'Lincoln in the Bardo',
        'Never Let Me Go',
        'The Underground Railroad',
      ],
      correctAnswer: 2,
      explanation:
          'Never Let Me Go by Kazuo Ishiguro was first published in 2005.',
    ),
    Question(
      question: 'Which book by Colson Whitehead was first published in 2016?',
      answers: [
        'The Sellout',
        'The Underground Railroad',
        'The Nickel Boys',
        'Pachinko',
      ],
      correctAnswer: 1,
      explanation: 'The Underground Railroad by Colson Whitehead was first published in 2016.',
    ),
    Question(
      question: 'Which book by Colson Whitehead was first published in 2019?',
      answers: ['The Nickel Boys', 'Cloud Atlas', 'The Overstory', 'Hamnet'],
      correctAnswer: 0,
      explanation:
          'The Nickel Boys by Colson Whitehead was first published in 2019.',
    ),
    Question(
      question: 'Which book by David Mitchell was first published in 2004?',
      answers: [
        'The Curious Incident of the Dog in the Night-Time',
        'The Amazing Adventures of Kavalier & Clay',
        'Shuggie Bain',
        'Cloud Atlas',
      ],
      correctAnswer: 3,
      explanation: 'Cloud Atlas by David Mitchell was first published in 2004.',
    ),
    Question(
      question: 'Which book by Mark Haddon was first published in 2003?',
      answers: [
        'Middlesex',
        'The Lincoln Highway',
        'The Curious Incident of the Dog in the Night-Time',
        'The Night Circus',
      ],
      correctAnswer: 2,
      explanation: 'The Curious Incident of the Dog in the Night-Time by Mark Haddon was first published in 2003.',
    ),
    Question(
      question: 'Which book by Erin Morgenstern was first published in 2011?',
      answers: [
        'A Gentleman in Moscow',
        'The Night Circus',
        'Station Eleven',
        'The Brief Wondrous Life of Oscar Wao',
      ],
      correctAnswer: 1,
      explanation:
          'The Night Circus by Erin Morgenstern was first published in 2011.',
    ),
    Question(
      question:
          'Which book by Emily St. John Mandel was first published in 2014?',
      answers: [
        'Station Eleven',
        'The Sympathizer',
        'A Visit from the Goon Squad',
        'The Dutch House',
      ],
      correctAnswer: 0,
      explanation: 'Station Eleven by Emily St. John Mandel was first published in 2014.',
    ),
    Question(
      question: 'Which book by Viet Thanh Nguyen was first published in 2015?',
      answers: [
        'Normal People',
        'Lincoln in the Bardo',
        'Commonwealth',
        'The Sympathizer',
      ],
      correctAnswer: 3,
      explanation:
          'The Sympathizer by Viet Thanh Nguyen was first published in 2015.',
    ),
    Question(
      question: 'Which book by Sally Rooney was first published in 2018?',
      answers: ['The Sellout', 'Homegoing', 'Normal People', 'Pachinko'],
      correctAnswer: 2,
      explanation: 'Normal People by Sally Rooney was first published in 2018.',
    ),
    Question(
      question: 'Which book by Min Jin Lee was first published in 2017?',
      answers: ['The Vanishing Half', 'Pachinko', 'The Overstory', 'Hamnet'],
      correctAnswer: 1,
      explanation: 'Pachinko by Min Jin Lee was first published in 2017.',
    ),
    Question(
      question: 'Which book by Richard Powers was first published in 2018?',
      answers: [
        'The Overstory',
        'The Amazing Adventures of Kavalier & Clay',
        'Shuggie Bain',
        'The Seven Husbands of Evelyn Hugo',
      ],
      correctAnswer: 0,
      explanation:
          'The Overstory by Richard Powers was first published in 2018.',
    ),
    Question(
      question: 'Which book by Michael Chabon was first published in 2000?',
      answers: [
        'Middlesex',
        'The Lincoln Highway',
        'Tomorrow, and Tomorrow, and Tomorrow',
        'The Amazing Adventures of Kavalier & Clay',
      ],
      correctAnswer: 3,
      explanation: 'The Amazing Adventures of Kavalier & Clay by Michael Chabon was first published in 2000.',
    ),
    Question(
      question: 'Which book by Jeffrey Eugenides was first published in 2002?',
      answers: [
        'A Gentleman in Moscow',
        'The Covenant of Water',
        'Middlesex',
        'The Brief Wondrous Life of Oscar Wao',
      ],
      correctAnswer: 2,
      explanation:
          'Middlesex by Jeffrey Eugenides was first published in 2002.',
    ),
    Question(
      question: 'Which book by Junot Díaz was first published in 2007?',
      answers: [
        'The Heaven & Earth Grocery Store',
        'The Brief Wondrous Life of Oscar Wao',
        'A Visit from the Goon Squad',
        'The Dutch House',
      ],
      correctAnswer: 1,
      explanation: 'The Brief Wondrous Life of Oscar Wao by Junot Díaz was first published in 2007.',
    ),
    Question(
      question: 'Which book by Jennifer Egan was first published in 2010?',
      answers: [
        'A Visit from the Goon Squad',
        'Lincoln in the Bardo',
        'Commonwealth',
        'Demon Copperhead',
      ],
      correctAnswer: 0,
      explanation: 'A Visit from the Goon Squad by Jennifer Egan was first published in 2010.',
    ),
    Question(
      question: 'Which book by George Saunders was first published in 2017?',
      answers: [
        'The Sellout',
        'Homegoing',
        'The Poisonwood Bible',
        'Lincoln in the Bardo',
      ],
      correctAnswer: 3,
      explanation: 'Lincoln in the Bardo by George Saunders was first published in 2017.',
    ),
    Question(
      question: 'Which book by Paul Beatty was first published in 2015?',
      answers: ['The Vanishing Half', 'White Teeth', 'The Sellout', 'Hamnet'],
      correctAnswer: 2,
      explanation: 'The Sellout by Paul Beatty was first published in 2015.',
    ),
    Question(
      question: 'Which book by Maggie O\'Farrell was first published in 2020?',
      answers: [
        'On Beauty',
        'Hamnet',
        'Shuggie Bain',
        'The Seven Husbands of Evelyn Hugo',
      ],
      correctAnswer: 1,
      explanation: 'Hamnet by Maggie O\'Farrell was first published in 2020.',
    ),
    Question(
      question: 'Which book by Douglas Stuart was first published in 2020?',
      answers: [
        'Shuggie Bain',
        'The Lincoln Highway',
        'Tomorrow, and Tomorrow, and Tomorrow',
        'The Namesake',
      ],
      correctAnswer: 0,
      explanation:
          'Shuggie Bain by Douglas Stuart was first published in 2020.',
    ),
    Question(
      question: 'Which book by Amor Towles was first published in 2021?',
      answers: [
        'A Gentleman in Moscow',
        'The Covenant of Water',
        'The Lowland',
        'The Lincoln Highway',
      ],
      correctAnswer: 3,
      explanation:
          'The Lincoln Highway by Amor Towles was first published in 2021.',
    ),
  ],
  'Hard': [
    Question(
      question: 'In what year was A Gentleman in Moscow first published?',
      answers: ['2011', '2007', '2016', '2006'],
      correctAnswer: 2,
      explanation: 'A Gentleman in Moscow was first published in 2016.',
    ),
    Question(
      question: 'In what year was The Dutch House first published?',
      answers: ['2010', '2019', '2003', '2014'],
      correctAnswer: 1,
      explanation: 'The Dutch House was first published in 2019.',
    ),
    Question(
      question: 'In what year was Commonwealth first published?',
      answers: ['2016', '2005', '2015', '2020'],
      correctAnswer: 0,
      explanation: 'Commonwealth was first published in 2016.',
    ),
    Question(
      question: 'In what year was Homegoing first published?',
      answers: ['1992', '2018', '2021', '2016'],
      correctAnswer: 3,
      explanation: 'Homegoing was first published in 2016.',
    ),
    Question(
      question: 'In what year was The Vanishing Half first published?',
      answers: ['2018', '2022', '2020', '2013'],
      correctAnswer: 2,
      explanation: 'The Vanishing Half was first published in 2020.',
    ),
    Question(
      question:
          'In what year was The Seven Husbands of Evelyn Hugo first published?',
      answers: ['2023', '2017', '2016', '2000'],
      correctAnswer: 1,
      explanation:
          'The Seven Husbands of Evelyn Hugo was first published in 2017.',
    ),
    Question(
      question: 'In what year was Tomorrow, and Tomorrow, and Tomorrow first published?',
      answers: ['2022', '2019', '2000', '1998'],
      correctAnswer: 0,
      explanation:
          'Tomorrow, and Tomorrow, and Tomorrow was first published in 2022.',
    ),
    Question(
      question: 'In what year was The Covenant of Water first published?',
      answers: ['2004', '2002', '2012', '2023'],
      correctAnswer: 3,
      explanation: 'The Covenant of Water was first published in 2023.',
    ),
    Question(
      question:
          'In what year was The Heaven & Earth Grocery Store first published?',
      answers: ['2007', '1987', '2023', '2011'],
      correctAnswer: 2,
      explanation:
          'The Heaven & Earth Grocery Store was first published in 2023.',
    ),
    Question(
      question: 'In what year was Demon Copperhead first published?',
      answers: ['1985', '2022', '2014', '2010'],
      correctAnswer: 1,
      explanation: 'Demon Copperhead was first published in 2022.',
    ),
    Question(
      question: 'In what year was The Poisonwood Bible first published?',
      answers: ['1998', '2015', '2020', '1989'],
      correctAnswer: 0,
      explanation: 'The Poisonwood Bible was first published in 1998.',
    ),
    Question(
      question: 'In what year was White Teeth first published?',
      answers: ['2018', '2022', '2001', '2000'],
      correctAnswer: 3,
      explanation: 'White Teeth was first published in 2000.',
    ),
    Question(
      question: 'In what year was On Beauty first published?',
      answers: ['2023', '2006', '2005', '2000'],
      correctAnswer: 2,
      explanation: 'On Beauty was first published in 2005.',
    ),
    Question(
      question: 'In what year was The Namesake first published?',
      answers: ['2005', '2003', '2002', '1998'],
      correctAnswer: 1,
      explanation: 'The Namesake was first published in 2003.',
    ),
    Question(
      question: 'In what year was The Lowland first published?',
      answers: ['2013', '2007', '2012', '2005'],
      correctAnswer: 0,
      explanation: 'The Lowland was first published in 2013.',
    ),
    Question(
      question: 'In what year was The Corrections first published?',
      answers: ['2010', '1987', '2013', '2001'],
      correctAnswer: 3,
      explanation: 'The Corrections was first published in 2001.',
    ),
    Question(
      question: 'In what year was Freedom first published?',
      answers: ['1985', '2013', '2010', '2020'],
      correctAnswer: 2,
      explanation: 'Freedom was first published in 2010.',
    ),
    Question(
      question: 'In what year was The Known World first published?',
      answers: ['2019', '2003', '2021', '1989'],
      correctAnswer: 1,
      explanation: 'The Known World was first published in 2003.',
    ),
    Question(
      question: 'In what year was Gilead first published?',
      answers: ['2004', '2022', '2001', '2019'],
      correctAnswer: 0,
      explanation: 'Gilead was first published in 2004.',
    ),
    Question(
      question: 'In what year was The Round House first published?',
      answers: ['2022', '2006', '2004', '2012'],
      correctAnswer: 3,
      explanation: 'The Round House was first published in 2012.',
    ),
  ],
};
final Map<String, List<Question>> _nonFictionAdditions = {
  'Easy': [
    Question(
      question: 'Name the author of The Diary of a Young Girl.',
      answers: [
        'Anne Frank',
        'Elie Wiesel',
        'Isabel Wilkerson',
        'David McCullough',
      ],
      correctAnswer: 0,
      explanation: 'Anne Frank wrote The Diary of a Young Girl.',
    ),
    Question(
      question: 'Name the author of Night.',
      answers: ['Tom Wolfe', 'Isabel Wilkerson', 'Erik Larson', 'Elie Wiesel'],
      correctAnswer: 3,
      explanation: 'Elie Wiesel wrote Night.',
    ),
    Question(
      question: 'Name the author of The Right Stuff.',
      answers: ['Tara Westover', 'Erik Larson', 'Tom Wolfe', 'Jon Krakauer'],
      correctAnswer: 2,
      explanation: 'Tom Wolfe wrote The Right Stuff.',
    ),
    Question(
      question: 'Name the author of Into Thin Air.',
      answers: [
        'David Grann',
        'Jon Krakauer',
        'Rebecca Skloot',
        'Doris Kearns Goodwin',
      ],
      correctAnswer: 1,
      explanation: 'Jon Krakauer wrote Into Thin Air.',
    ),
    Question(
      question: 'Name the author of Into the Wild.',
      answers: [
        'Jon Krakauer',
        'Laura Hillenbrand',
        'David McCullough',
        'David Grann',
      ],
      correctAnswer: 0,
      explanation: 'Jon Krakauer wrote Into the Wild.',
    ),
    Question(
      question: 'Name the author of The Immortal Life of Henrietta Lacks.',
      answers: [
        'Laura Hillenbrand',
        'David McCullough',
        'David Grann',
        'Rebecca Skloot',
      ],
      correctAnswer: 3,
      explanation: 'Rebecca Skloot wrote The Immortal Life of Henrietta Lacks.',
    ),
    Question(
      question: 'Name the author of Unbroken.',
      answers: [
        'David McCullough',
        'Daniel Kahneman',
        'Laura Hillenbrand',
        'Isabel Wilkerson',
      ],
      correctAnswer: 2,
      explanation: 'Laura Hillenbrand wrote Unbroken.',
    ),
    Question(
      question: 'Name the author of Seabiscuit.',
      answers: [
        'Siddhartha Mukherjee',
        'Laura Hillenbrand',
        'Isabel Wilkerson',
        'Erik Larson',
      ],
      correctAnswer: 1,
      explanation: 'Laura Hillenbrand wrote Seabiscuit.',
    ),
    Question(
      question: 'Name the author of The Warmth of Other Suns.',
      answers: [
        'Isabel Wilkerson',
        'Tara Westover',
        'Erik Larson',
        'Siddhartha Mukherjee',
      ],
      correctAnswer: 0,
      explanation: 'Isabel Wilkerson wrote The Warmth of Other Suns.',
    ),
    Question(
      question: 'Name the author of Caste.',
      answers: [
        'Michelle Obama',
        'Erik Larson',
        'Elizabeth Kolbert',
        'Isabel Wilkerson',
      ],
      correctAnswer: 3,
      explanation: 'Isabel Wilkerson wrote Caste.',
    ),
  ],
  'Medium': [
    Question(
      question: 'Which book by Tara Westover was first published in 2018?',
      answers: [
        'In the Garden of Beasts',
        'The Sixth Extinction',
        'Educated',
        'Becoming',
      ],
      correctAnswer: 2,
      explanation: 'Educated by Tara Westover was first published in 2018.',
    ),
    Question(
      question: 'Which book by Michelle Obama was first published in 2018?',
      answers: [
        'Silent Spring',
        'Becoming',
        'Team of Rivals',
        'Killers of the Flower Moon',
      ],
      correctAnswer: 1,
      explanation: 'Becoming by Michelle Obama was first published in 2018.',
    ),
    Question(
      question:
          'Which book by Doris Kearns Goodwin was first published in 2005?',
      answers: [
        'Team of Rivals',
        'The Wright Brothers',
        'The Wager',
        'A Brief History of Time',
      ],
      correctAnswer: 0,
      explanation:
          'Team of Rivals by Doris Kearns Goodwin was first published in 2005.',
    ),
    Question(
      question: 'Which book by David McCullough was first published in 2015?',
      answers: [
        'John Adams',
        'Hidden Figures',
        'The Selfish Gene',
        'The Wright Brothers',
      ],
      correctAnswer: 3,
      explanation: 'The Wright Brothers by David McCullough was first published in 2015.',
    ),
    Question(
      question: 'Which book by David McCullough was first published in 2001?',
      answers: ['Thinking, Fast and Slow', 'Cosmos', 'John Adams', '1776'],
      correctAnswer: 2,
      explanation:
          'John Adams by David McCullough was first published in 2001.',
    ),
    Question(
      question: 'Which book by David McCullough was first published in 2005?',
      answers: [
        'The Man Who Mistook His Wife for a Hat',
        '1776',
        'The Splendid and the Vile',
        'The Emperor of All Maladies',
      ],
      correctAnswer: 1,
      explanation: '1776 by David McCullough was first published in 2005.',
    ),
    Question(
      question: 'Which book by Erik Larson was first published in 2020?',
      answers: [
        'The Splendid and the Vile',
        'The Devil in the White City',
        'The Gene',
        'The Omnivore\'s Dilemma',
      ],
      correctAnswer: 0,
      explanation: 'The Splendid and the Vile by Erik Larson was first published in 2020.',
    ),
    Question(
      question: 'Which book by Erik Larson was first published in 2003?',
      answers: [
        'In the Garden of Beasts',
        'The Sixth Extinction',
        'The New Jim Crow',
        'The Devil in the White City',
      ],
      correctAnswer: 3,
      explanation: 'The Devil in the White City by Erik Larson was first published in 2003.',
    ),
    Question(
      question: 'Which book by Erik Larson was first published in 2011?',
      answers: [
        'Silent Spring',
        'Evicted',
        'In the Garden of Beasts',
        'Killers of the Flower Moon',
      ],
      correctAnswer: 2,
      explanation:
          'In the Garden of Beasts by Erik Larson was first published in 2011.',
    ),
    Question(
      question: 'Which book by David Grann was first published in 2017?',
      answers: [
        'Nickel and Dimed',
        'Killers of the Flower Moon',
        'The Wager',
        'A Brief History of Time',
      ],
      correctAnswer: 1,
      explanation: 'Killers of the Flower Moon by David Grann was first published in 2017.',
    ),
    Question(
      question: 'Which book by David Grann was first published in 2023?',
      answers: [
        'The Wager',
        'Hidden Figures',
        'The Selfish Gene',
        'The Glass Castle',
      ],
      correctAnswer: 0,
      explanation: 'The Wager by David Grann was first published in 2023.',
    ),
    Question(
      question:
          'Which book by Margot Lee Shetterly was first published in 2016?',
      answers: [
        'Thinking, Fast and Slow',
        'Cosmos',
        'Just Mercy',
        'Hidden Figures',
      ],
      correctAnswer: 3,
      explanation:
          'Hidden Figures by Margot Lee Shetterly was first published in 2016.',
    ),
    Question(
      question: 'Which book by Daniel Kahneman was first published in 2011?',
      answers: [
        'The Man Who Mistook His Wife for a Hat',
        'Between the World and Me',
        'Thinking, Fast and Slow',
        'The Emperor of All Maladies',
      ],
      correctAnswer: 2,
      explanation: 'Thinking, Fast and Slow by Daniel Kahneman was first published in 2011.',
    ),
    Question(
      question:
          'Which book by Siddhartha Mukherjee was first published in 2010?',
      answers: [
        'The Fire Next Time',
        'The Emperor of All Maladies',
        'The Gene',
        'The Omnivore\'s Dilemma',
      ],
      correctAnswer: 1,
      explanation: 'The Emperor of All Maladies by Siddhartha Mukherjee was first published in 2010.',
    ),
    Question(
      question:
          'Which book by Siddhartha Mukherjee was first published in 2016?',
      answers: [
        'The Gene',
        'The Sixth Extinction',
        'The New Jim Crow',
        'The Color of Water',
      ],
      correctAnswer: 0,
      explanation:
          'The Gene by Siddhartha Mukherjee was first published in 2016.',
    ),
    Question(
      question: 'Which book by Elizabeth Kolbert was first published in 2014?',
      answers: [
        'Silent Spring',
        'Evicted',
        'When Breath Becomes Air',
        'The Sixth Extinction',
      ],
      correctAnswer: 3,
      explanation: 'The Sixth Extinction by Elizabeth Kolbert was first published in 2014.',
    ),
    Question(
      question: 'Which book by Rachel Carson was first published in 1962?',
      answers: [
        'Nickel and Dimed',
        'Being Mortal',
        'Silent Spring',
        'A Brief History of Time',
      ],
      correctAnswer: 2,
      explanation:
          'Silent Spring by Rachel Carson was first published in 1962.',
    ),
    Question(
      question: 'Which book by Stephen Hawking was first published in 1988?',
      answers: [
        'The Boys in the Boat',
        'A Brief History of Time',
        'The Selfish Gene',
        'The Glass Castle',
      ],
      correctAnswer: 1,
      explanation: 'A Brief History of Time by Stephen Hawking was first published in 1988.',
    ),
    Question(
      question: 'Which book by Richard Dawkins was first published in 1976?',
      answers: ['The Selfish Gene', 'Cosmos', 'Just Mercy', 'Endurance'],
      correctAnswer: 0,
      explanation:
          'The Selfish Gene by Richard Dawkins was first published in 1976.',
    ),
    Question(
      question: 'Which book by Carl Sagan was first published in 1980?',
      answers: [
        'The Man Who Mistook His Wife for a Hat',
        'Between the World and Me',
        'The Lost City of Z',
        'Cosmos',
      ],
      correctAnswer: 3,
      explanation: 'Cosmos by Carl Sagan was first published in 1980.',
    ),
  ],
  'Hard': [
    Question(
      question: 'In what year was The Man Who Mistook His Wife for a Hat first published?',
      answers: ['2005', '2014', '1985', '1979'],
      correctAnswer: 2,
      explanation:
          'The Man Who Mistook His Wife for a Hat was first published in 1985.',
    ),
    Question(
      question: 'In what year was The Omnivore\'s Dilemma first published?',
      answers: ['1962', '2006', '1997', '2015'],
      correctAnswer: 1,
      explanation: 'The Omnivore\'s Dilemma was first published in 2006.',
    ),
    Question(
      question: 'In what year was The New Jim Crow first published?',
      answers: ['2010', '1996', '2011', '1976'],
      correctAnswer: 0,
      explanation: 'The New Jim Crow was first published in 2010.',
    ),
    Question(
      question: 'In what year was Evicted first published?',
      answers: ['2010', '2011', '1980', '2016'],
      correctAnswer: 3,
      explanation: 'Evicted was first published in 2016.',
    ),
    Question(
      question: 'In what year was Nickel and Dimed first published?',
      answers: ['2023', '1985', '2001', '2020'],
      correctAnswer: 2,
      explanation: 'Nickel and Dimed was first published in 2001.',
    ),
    Question(
      question: 'In what year was The Glass Castle first published?',
      answers: ['2006', '2005', '2020', '2016'],
      correctAnswer: 1,
      explanation: 'The Glass Castle was first published in 2005.',
    ),
    Question(
      question: 'In what year was Just Mercy first published?',
      answers: ['2014', '2018', '2016', '1963'],
      correctAnswer: 0,
      explanation: 'Just Mercy was first published in 2014.',
    ),
    Question(
      question: 'In what year was Between the World and Me first published?',
      answers: ['2005', '1962', '1995', '2015'],
      correctAnswer: 3,
      explanation: 'Between the World and Me was first published in 2015.',
    ),
    Question(
      question: 'In what year was The Fire Next Time first published?',
      answers: ['1962', '2013', '1963', '2015'],
      correctAnswer: 2,
      explanation: 'The Fire Next Time was first published in 1963.',
    ),
    Question(
      question: 'In what year was The Color of Water first published?',
      answers: ['1959', '1995', '2003', '1988'],
      correctAnswer: 1,
      explanation: 'The Color of Water was first published in 1995.',
    ),
    Question(
      question: 'In what year was When Breath Becomes Air first published?',
      answers: ['2016', '2011', '1980', '2009'],
      correctAnswer: 0,
      explanation: 'When Breath Becomes Air was first published in 2016.',
    ),
    Question(
      question: 'In what year was Being Mortal first published?',
      answers: ['2017', '1985', '1974', '2014'],
      correctAnswer: 3,
      explanation: 'Being Mortal was first published in 2014.',
    ),
    Question(
      question: 'In what year was The Boys in the Boat first published?',
      answers: ['1985', '1947', '2013', '2023'],
      correctAnswer: 2,
      explanation: 'The Boys in the Boat was first published in 2013.',
    ),
    Question(
      question: 'In what year was Endurance first published?',
      answers: ['1956', '1959', '2016', '2006'],
      correctAnswer: 1,
      explanation: 'Endurance was first published in 1959.',
    ),
    Question(
      question: 'In what year was The Lost City of Z first published?',
      answers: ['2009', '2014', '1963', '1979'],
      correctAnswer: 0,
      explanation: 'The Lost City of Z was first published in 2009.',
    ),
    Question(
      question: 'In what year was Longitude first published?',
      answers: ['1962', '2013', '1997', '1995'],
      correctAnswer: 3,
      explanation: 'Longitude was first published in 1995.',
    ),
    Question(
      question: 'In what year was The Soul of an Octopus first published?',
      answers: ['1959', '1996', '2015', '1976'],
      correctAnswer: 2,
      explanation: 'The Soul of an Octopus was first published in 2015.',
    ),
    Question(
      question: 'In what year was Braiding Sweetgrass first published?',
      answers: ['2010', '2013', '1976', '2009'],
      correctAnswer: 1,
      explanation: 'Braiding Sweetgrass was first published in 2013.',
    ),
    Question(
      question: 'In what year was The Library Book first published?',
      answers: ['2018', '1985', '1974', '2001'],
      correctAnswer: 0,
      explanation: 'The Library Book was first published in 2018.',
    ),
    Question(
      question: 'In what year was The Power Broker first published?',
      answers: ['1985', '1947', '2020', '1974'],
      correctAnswer: 3,
      explanation: 'The Power Broker was first published in 1974.',
    ),
  ],
};
final Map<String, List<Question>> _franchisesAdditions = {
  'Easy': [
    Question(
      question: 'Which author is credited with creating the The Lord of the Rings book series?',
      answers: [
        'J. R. R. Tolkien',
        'C. S. Lewis',
        'Stephen King',
        'Diana Gabaldon',
      ],
      correctAnswer: 0,
      explanation: 'J. R. R. Tolkien created The Lord of the Rings.',
    ),
    Question(
      question: 'Which author is credited with creating the The Chronicles of Narnia book series?',
      answers: [
        'George R. R. Martin',
        'Ursula K. Le Guin',
        'Lee Child',
        'C. S. Lewis',
      ],
      correctAnswer: 3,
      explanation: 'C. S. Lewis created The Chronicles of Narnia.',
    ),
    Question(
      question: 'Which author is credited with creating the A Song of Ice and Fire book series?',
      answers: [
        'Terry Pratchett',
        'James Patterson',
        'George R. R. Martin',
        'Suzanne Collins',
      ],
      correctAnswer: 2,
      explanation: 'George R. R. Martin created A Song of Ice and Fire.',
    ),
    Question(
      question: 'Which author is credited with creating the The Hunger Games book series?',
      answers: [
        'Alexander McCall Smith',
        'Suzanne Collins',
        'Rick Riordan',
        'Robert Jordan',
      ],
      correctAnswer: 1,
      explanation: 'Suzanne Collins created The Hunger Games.',
    ),
    Question(
      question: 'Which author is credited with creating the Percy Jackson and the Olympians book series?',
      answers: [
        'Rick Riordan',
        'James Dashner',
        'Brandon Sanderson',
        'Stieg Larsson',
      ],
      correctAnswer: 0,
      explanation: 'Rick Riordan created Percy Jackson and the Olympians.',
    ),
    Question(
      question: 'Which author is credited with creating the The Maze Runner book series?',
      answers: [
        'Veronica Roth',
        'Brandon Sanderson',
        'James S. A. Corey',
        'James Dashner',
      ],
      correctAnswer: 3,
      explanation: 'James Dashner created The Maze Runner.',
    ),
    Question(
      question:
          'Which author is credited with creating the Divergent book series?',
      answers: [
        'Patrick Rothfuss',
        'Christopher Paolini',
        'Veronica Roth',
        'Philip Pullman',
      ],
      correctAnswer: 2,
      explanation: 'Veronica Roth created Divergent.',
    ),
    Question(
      question: 'Which author is credited with creating the His Dark Materials book series?',
      answers: [
        'Eoin Colfer',
        'Philip Pullman',
        'Stephen King',
        'Diana Gabaldon',
      ],
      correctAnswer: 1,
      explanation: 'Philip Pullman created His Dark Materials.',
    ),
    Question(
      question: 'Which author is credited with creating the The Dark Tower book series?',
      answers: [
        'Stephen King',
        'Ursula K. Le Guin',
        'Lee Child',
        'Lemony Snicket',
      ],
      correctAnswer: 0,
      explanation: 'Stephen King created The Dark Tower.',
    ),
    Question(
      question:
          'Which author is credited with creating the Earthsea book series?',
      answers: [
        'Terry Pratchett',
        'James Patterson',
        'Brian Jacques',
        'Ursula K. Le Guin',
      ],
      correctAnswer: 3,
      explanation: 'Ursula K. Le Guin created Earthsea.',
    ),
  ],
  'Medium': [
    Question(
      question: 'Which title begins the Discworld series?',
      answers: [
        'The No. 1 Ladies\' Detective Agency',
        'The Amulet of Samarkand',
        'The Colour of Magic',
        'The Eye of the World',
      ],
      correctAnswer: 2,
      explanation: 'The Colour of Magic begins the Discworld series.',
    ),
    Question(
      question: 'Which title begins the The Wheel of Time series?',
      answers: [
        'City of Bones',
        'The Eye of the World',
        'The Final Empire',
        'The Girl with the Dragon Tattoo',
      ],
      correctAnswer: 1,
      explanation: 'The Eye of the World begins the The Wheel of Time series.',
    ),
    Question(
      question: 'Which title begins the Mistborn series?',
      answers: [
        'The Final Empire',
        'The Way of Kings',
        'Leviathan Wakes',
        'Cinder',
      ],
      correctAnswer: 0,
      explanation: 'The Final Empire begins the Mistborn series.',
    ),
    Question(
      question: 'Which title begins the The Stormlight Archive series?',
      answers: [
        'The Name of the Wind',
        'Eragon',
        'The Selection',
        'The Way of Kings',
      ],
      correctAnswer: 3,
      explanation: 'The Way of Kings begins the The Stormlight Archive series.',
    ),
    Question(
      question: 'Which title begins the The Kingkiller Chronicle series?',
      answers: [
        'Artemis Fowl',
        'Miss Peregrine\'s Home for Peculiar Children',
        'The Name of the Wind',
        'Outlander',
      ],
      correctAnswer: 2,
      explanation:
          'The Name of the Wind begins the The Kingkiller Chronicle series.',
    ),
    Question(
      question: 'Which title begins the Outlander series?',
      answers: [
        'Annihilation',
        'Outlander',
        'Killing Floor',
        'The Bad Beginning',
      ],
      correctAnswer: 1,
      explanation: 'Outlander begins the Outlander series.',
    ),
    Question(
      question: 'Which title begins the Jack Reacher series?',
      answers: [
        'Killing Floor',
        'Along Came a Spider',
        'Redwall',
        'The Fifth Season',
      ],
      correctAnswer: 0,
      explanation: 'Killing Floor begins the Jack Reacher series.',
    ),
    Question(
      question: 'Which title begins the Alex Cross series?',
      answers: [
        'The No. 1 Ladies\' Detective Agency',
        'The Amulet of Samarkand',
        'The Poppy War',
        'Along Came a Spider',
      ],
      correctAnswer: 3,
      explanation: 'Along Came a Spider begins the Alex Cross series.',
    ),
    Question(
      question:
          'Which title begins the The No. 1 Ladies\' Detective Agency series?',
      answers: [
        'City of Bones',
        'Jade City',
        'The No. 1 Ladies\' Detective Agency',
        'The Girl with the Dragon Tattoo',
      ],
      correctAnswer: 2,
      explanation: 'The No. 1 Ladies\' Detective Agency begins the The No. 1 Ladies\' Detective Agency series.',
    ),
    Question(
      question: 'Which title begins the The Millennium series series?',
      answers: [
        'The City of Brass',
        'The Girl with the Dragon Tattoo',
        'Leviathan Wakes',
        'Cinder',
      ],
      correctAnswer: 1,
      explanation: 'The Girl with the Dragon Tattoo begins the The Millennium series series.',
    ),
    Question(
      question: 'Which title begins the The Expanse series?',
      answers: [
        'Leviathan Wakes',
        'Eragon',
        'The Selection',
        'A Deadly Education',
      ],
      correctAnswer: 0,
      explanation: 'Leviathan Wakes begins the The Expanse series.',
    ),
    Question(
      question: 'Which title begins the The Inheritance Cycle series?',
      answers: [
        'Artemis Fowl',
        'Miss Peregrine\'s Home for Peculiar Children',
        'Sabriel',
        'Eragon',
      ],
      correctAnswer: 3,
      explanation: 'Eragon begins the The Inheritance Cycle series.',
    ),
    Question(
      question: 'Which title begins the Artemis Fowl series?',
      answers: [
        'Annihilation',
        'Assassin\'s Apprentice',
        'Artemis Fowl',
        'The Bad Beginning',
      ],
      correctAnswer: 2,
      explanation: 'Artemis Fowl begins the Artemis Fowl series.',
    ),
    Question(
      question: 'Which title begins the A Series of Unfortunate Events series?',
      answers: [
        'The Blade Itself',
        'The Bad Beginning',
        'Redwall',
        'The Fifth Season',
      ],
      correctAnswer: 1,
      explanation:
          'The Bad Beginning begins the A Series of Unfortunate Events series.',
    ),
    Question(
      question: 'Which title begins the Redwall series?',
      answers: [
        'Redwall',
        'The Amulet of Samarkand',
        'The Poppy War',
        'Gardens of the Moon',
      ],
      correctAnswer: 0,
      explanation: 'Redwall begins the Redwall series.',
    ),
    Question(
      question: 'Which title begins the The Bartimaeus Sequence series?',
      answers: [
        'City of Bones',
        'Jade City',
        'Storm Front',
        'The Amulet of Samarkand',
      ],
      correctAnswer: 3,
      explanation:
          'The Amulet of Samarkand begins the The Bartimaeus Sequence series.',
    ),
    Question(
      question: 'Which title begins the The Mortal Instruments series?',
      answers: [
        'The City of Brass',
        'The Last Wish',
        'City of Bones',
        'Cinder',
      ],
      correctAnswer: 2,
      explanation: 'City of Bones begins the The Mortal Instruments series.',
    ),
    Question(
      question: 'Which title begins the The Lunar Chronicles series?',
      answers: [
        'The Thursday Murder Club',
        'Cinder',
        'The Selection',
        'A Deadly Education',
      ],
      correctAnswer: 1,
      explanation: 'Cinder begins the The Lunar Chronicles series.',
    ),
    Question(
      question: 'Which title begins the The Selection series?',
      answers: [
        'The Selection',
        'Miss Peregrine\'s Home for Peculiar Children',
        'Sabriel',
        'The Cuckoo\'s Calling',
      ],
      correctAnswer: 0,
      explanation: 'The Selection begins the The Selection series.',
    ),
    Question(
      question:
          'Which title begins the Miss Peregrine\'s Peculiar Children series?',
      answers: [
        'Annihilation',
        'Assassin\'s Apprentice',
        'Still Life',
        'Miss Peregrine\'s Home for Peculiar Children',
      ],
      correctAnswer: 3,
      explanation: 'Miss Peregrine\'s Home for Peculiar Children begins the Miss Peregrine\'s Peculiar Children series.',
    ),
  ],
  'Hard': [
    Question(
      question: 'Annihilation is the opening title of which series?',
      answers: [
        'The First Law',
        'The Bosch series',
        'The Southern Reach Trilogy',
        'The Broken Earth',
      ],
      correctAnswer: 2,
      explanation: 'Annihilation opens the The Southern Reach Trilogy series.',
    ),
    Question(
      question: 'The Fifth Season is the opening title of which series?',
      answers: [
        'The Lincoln Rhyme series',
        'The Broken Earth',
        'The Poppy War',
        'Malazan Book of the Fallen',
      ],
      correctAnswer: 1,
      explanation: 'The Fifth Season opens the The Broken Earth series.',
    ),
    Question(
      question: 'The Poppy War is the opening title of which series?',
      answers: [
        'The Poppy War',
        'The Green Bone Saga',
        'The Dresden Files',
        'The Temperance Brennan series',
      ],
      correctAnswer: 0,
      explanation: 'The Poppy War opens the The Poppy War series.',
    ),
    Question(
      question: 'Jade City is the opening title of which series?',
      answers: [
        'The Daevabad Trilogy',
        'The Witcher',
        'The Vorkosigan Saga',
        'The Green Bone Saga',
      ],
      correctAnswer: 3,
      explanation: 'Jade City opens the The Green Bone Saga series.',
    ),
    Question(
      question: 'The City of Brass is the opening title of which series?',
      answers: [
        'The Thursday Murder Club',
        'The Foundation series',
        'The Daevabad Trilogy',
        'The Scholomance',
      ],
      correctAnswer: 2,
      explanation: 'The City of Brass opens the The Daevabad Trilogy series.',
    ),
    Question(
      question: 'A Deadly Education is the opening title of which series?',
      answers: [
        'The Lord of the Rings',
        'The Scholomance',
        'The Old Kingdom',
        'Cormoran Strike',
      ],
      correctAnswer: 1,
      explanation: 'A Deadly Education opens the The Scholomance series.',
    ),
    Question(
      question: 'Sabriel is the opening title of which series?',
      answers: [
        'The Old Kingdom',
        'The Farseer Trilogy',
        'The Inspector Gamache series',
        'The Chronicles of Narnia',
      ],
      correctAnswer: 0,
      explanation: 'Sabriel opens the The Old Kingdom series.',
    ),
    Question(
      question: 'Assassin\'s Apprentice is the opening title of which series?',
      answers: [
        'The First Law',
        'The Bosch series',
        'A Song of Ice and Fire',
        'The Farseer Trilogy',
      ],
      correctAnswer: 3,
      explanation:
          'Assassin\'s Apprentice opens the The Farseer Trilogy series.',
    ),
    Question(
      question: 'The Blade Itself is the opening title of which series?',
      answers: [
        'The Lincoln Rhyme series',
        'The Hunger Games',
        'The First Law',
        'Malazan Book of the Fallen',
      ],
      correctAnswer: 2,
      explanation: 'The Blade Itself opens the The First Law series.',
    ),
    Question(
      question: 'Gardens of the Moon is the opening title of which series?',
      answers: [
        'Percy Jackson and the Olympians',
        'Malazan Book of the Fallen',
        'The Dresden Files',
        'The Temperance Brennan series',
      ],
      correctAnswer: 1,
      explanation:
          'Gardens of the Moon opens the Malazan Book of the Fallen series.',
    ),
    Question(
      question: 'Storm Front is the opening title of which series?',
      answers: [
        'The Dresden Files',
        'The Witcher',
        'The Vorkosigan Saga',
        'The Maze Runner',
      ],
      correctAnswer: 0,
      explanation: 'Storm Front opens the The Dresden Files series.',
    ),
    Question(
      question: 'The Last Wish is the opening title of which series?',
      answers: [
        'The Thursday Murder Club',
        'The Foundation series',
        'Divergent',
        'The Witcher',
      ],
      correctAnswer: 3,
      explanation: 'The Last Wish opens the The Witcher series.',
    ),
    Question(
      question:
          'The Thursday Murder Club is the opening title of which series?',
      answers: [
        'The Lord of the Rings',
        'His Dark Materials',
        'The Thursday Murder Club',
        'Cormoran Strike',
      ],
      correctAnswer: 2,
      explanation:
          'The Thursday Murder Club opens the The Thursday Murder Club series.',
    ),
    Question(
      question: 'The Cuckoo\'s Calling is the opening title of which series?',
      answers: [
        'The Dark Tower',
        'Cormoran Strike',
        'The Inspector Gamache series',
        'The Chronicles of Narnia',
      ],
      correctAnswer: 1,
      explanation: 'The Cuckoo\'s Calling opens the Cormoran Strike series.',
    ),
    Question(
      question: 'Still Life is the opening title of which series?',
      answers: [
        'The Inspector Gamache series',
        'The Bosch series',
        'A Song of Ice and Fire',
        'Earthsea',
      ],
      correctAnswer: 0,
      explanation: 'Still Life opens the The Inspector Gamache series series.',
    ),
    Question(
      question: 'The Black Echo is the opening title of which series?',
      answers: [
        'The Lincoln Rhyme series',
        'The Hunger Games',
        'Discworld',
        'The Bosch series',
      ],
      correctAnswer: 3,
      explanation: 'The Black Echo opens the The Bosch series series.',
    ),
    Question(
      question: 'The Bone Collector is the opening title of which series?',
      answers: [
        'Percy Jackson and the Olympians',
        'The Wheel of Time',
        'The Lincoln Rhyme series',
        'The Temperance Brennan series',
      ],
      correctAnswer: 2,
      explanation:
          'The Bone Collector opens the The Lincoln Rhyme series series.',
    ),
    Question(
      question: 'Déjà Dead is the opening title of which series?',
      answers: [
        'Mistborn',
        'The Temperance Brennan series',
        'The Vorkosigan Saga',
        'The Maze Runner',
      ],
      correctAnswer: 1,
      explanation: 'Déjà Dead opens the The Temperance Brennan series series.',
    ),
    Question(
      question: 'Shards of Honor is the opening title of which series?',
      answers: [
        'The Vorkosigan Saga',
        'The Foundation series',
        'Divergent',
        'The Stormlight Archive',
      ],
      correctAnswer: 0,
      explanation: 'Shards of Honor opens the The Vorkosigan Saga series.',
    ),
    Question(
      question: 'Foundation is the opening title of which series?',
      answers: [
        'The Lord of the Rings',
        'His Dark Materials',
        'The Kingkiller Chronicle',
        'The Foundation series',
      ],
      correctAnswer: 3,
      explanation: 'Foundation opens the The Foundation series series.',
    ),
  ],
};
final Map<String, List<Question>> _whatBookAmIAdditions = {
  'Easy': [
    Question(
      question: 'Identify this book from the clue: A surveillance state led by Big Brother.',
      answers: ['1984', 'Fahrenheit 451', 'The Little Prince', 'The Outsiders'],
      correctAnswer: 0,
      explanation: 'The clue describes 1984 by George Orwell.',
    ),
    Question(
      question: 'Identify this book from the clue: A fireman whose job is burning books.',
      answers: [
        'The Hobbit',
        'The Color Purple',
        'The Things They Carried',
        'Fahrenheit 451',
      ],
      correctAnswer: 3,
      explanation: 'The clue describes Fahrenheit 451 by Ray Bradbury.',
    ),
    Question(
      question: 'Identify this book from the clue: Bilbo Baggins joins a quest with dwarves.',
      answers: [
        'The Bell Jar',
        'Flowers for Algernon',
        'The Hobbit',
        'The Catcher in the Rye',
      ],
      correctAnswer: 2,
      explanation: 'The clue describes The Hobbit by J. R. R. Tolkien.',
    ),
    Question(
      question: 'Identify this book from the clue: Holden Caulfield narrates after leaving school.',
      answers: [
        'The Martian',
        'The Catcher in the Rye',
        'The Old Man and the Sea',
        'Rebecca',
      ],
      correctAnswer: 1,
      explanation:
          'The clue describes The Catcher in the Rye by J. D. Salinger.',
    ),
    Question(
      question: 'Identify this book from the clue: An aging fisherman battles a giant marlin.',
      answers: [
        'The Old Man and the Sea',
        'Lord of the Flies',
        'The Secret Garden',
        'Ready Player One',
      ],
      correctAnswer: 0,
      explanation:
          'The clue describes The Old Man and the Sea by Ernest Hemingway.',
    ),
    Question(
      question: 'Identify this book from the clue: Schoolboys are stranded on an island.',
      answers: [
        'The Giver',
        'Anne of Green Gables',
        'The Help',
        'Lord of the Flies',
      ],
      correctAnswer: 3,
      explanation: 'The clue describes Lord of the Flies by William Golding.',
    ),
    Question(
      question: 'Identify this book from the clue: Jonas receives memories in a controlled community.',
      answers: ['Watership Down', 'Room', 'The Giver', 'The Alchemist'],
      correctAnswer: 2,
      explanation: 'The clue describes The Giver by Lois Lowry.',
    ),
    Question(
      question: 'Identify this book from the clue: A shepherd named Santiago pursues a treasure dream.',
      answers: [
        'Water for Elephants',
        'The Alchemist',
        'The Little Prince',
        'The Outsiders',
      ],
      correctAnswer: 1,
      explanation: 'The clue describes The Alchemist by Paulo Coelho.',
    ),
    Question(
      question: 'Identify this book from the clue: A pilot meets a young visitor from an asteroid.',
      answers: [
        'The Little Prince',
        'The Color Purple',
        'The Things They Carried',
        'The Time Traveler\'s Wife',
      ],
      correctAnswer: 0,
      explanation:
          'The clue describes The Little Prince by Antoine de Saint-Exupéry.',
    ),
    Question(
      question: 'Identify this book from the clue: Celie writes letters while enduring hardship.',
      answers: [
        'The Bell Jar',
        'Flowers for Algernon',
        'The Lovely Bones',
        'The Color Purple',
      ],
      correctAnswer: 3,
      explanation: 'The clue describes The Color Purple by Alice Walker.',
    ),
  ],
  'Medium': [
    Question(
      question: 'Identify the book: Esther Greenwood struggles during a summer in New York.',
      answers: [
        'The Martian',
        'The Shadow of the Wind',
        'The Bell Jar',
        'Rebecca',
      ],
      correctAnswer: 2,
      explanation: 'The description points to The Bell Jar by Sylvia Plath.',
    ),
    Question(
      question: 'Identify the book: A new bride lives under the shadow of her husband\'s first wife.',
      answers: [
        'The Nightingale',
        'Rebecca',
        'The Secret Garden',
        'Ready Player One',
      ],
      correctAnswer: 1,
      explanation: 'The description points to Rebecca by Daphne du Maurier.',
    ),
    Question(
      question:
          'Identify the book: A girl discovers a locked neglected garden.',
      answers: [
        'The Secret Garden',
        'Anne of Green Gables',
        'The Help',
        'All the Light We Cannot See',
      ],
      correctAnswer: 0,
      explanation: 'The description points to The Secret Garden by Frances Hodgson Burnett.',
    ),
    Question(
      question: 'Identify the book: An orphan is sent to live at Green Gables.',
      answers: [
        'Watership Down',
        'Room',
        'The Alice Network',
        'Anne of Green Gables',
      ],
      correctAnswer: 3,
      explanation:
          'The description points to Anne of Green Gables by L. M. Montgomery.',
    ),
    Question(
      question: 'Identify the book: Rabbits flee their threatened warren.',
      answers: [
        'Water for Elephants',
        'The Guernsey Literary and Potato Peel Pie Society',
        'Watership Down',
        'The Outsiders',
      ],
      correctAnswer: 2,
      explanation: 'The description points to Watership Down by Richard Adams.',
    ),
    Question(
      question: 'Identify the book: Ponyboy navigates conflict between Greasers and Socs.',
      answers: [
        'The Princess Bride',
        'The Outsiders',
        'The Things They Carried',
        'The Time Traveler\'s Wife',
      ],
      correctAnswer: 1,
      explanation: 'The description points to The Outsiders by S. E. Hinton.',
    ),
    Question(
      question: 'Identify the book: Linked stories follow soldiers in the Vietnam War.',
      answers: [
        'The Things They Carried',
        'Flowers for Algernon',
        'The Lovely Bones',
        'The Neverending Story',
      ],
      correctAnswer: 0,
      explanation:
          'The description points to The Things They Carried by Tim O\'Brien.',
    ),
    Question(
      question: 'Identify the book: Charlie Gordon undergoes an intelligence experiment.',
      answers: [
        'The Martian',
        'The Shadow of the Wind',
        'Coraline',
        'Flowers for Algernon',
      ],
      correctAnswer: 3,
      explanation:
          'The description points to Flowers for Algernon by Daniel Keyes.',
    ),
    Question(
      question: 'Identify the book: An astronaut is stranded alone on Mars.',
      answers: [
        'The Nightingale',
        'The Graveyard Book',
        'The Martian',
        'Ready Player One',
      ],
      correctAnswer: 2,
      explanation: 'The description points to The Martian by Andy Weir.',
    ),
    Question(
      question: 'Identify the book: A contest unfolds inside a virtual world called the OASIS.',
      answers: [
        'The House in the Cerulean Sea',
        'Ready Player One',
        'The Help',
        'All the Light We Cannot See',
      ],
      correctAnswer: 1,
      explanation:
          'The description points to Ready Player One by Ernest Cline.',
    ),
    Question(
      question: 'Identify the book: Women in 1960s Mississippi collaborate on stories about domestic work.',
      answers: [
        'The Help',
        'Room',
        'The Alice Network',
        'The Midnight Library',
      ],
      correctAnswer: 0,
      explanation: 'The description points to The Help by Kathryn Stockett.',
    ),
    Question(
      question:
          'Identify the book: A child narrates life in a single locked room.',
      answers: [
        'Water for Elephants',
        'The Guernsey Literary and Potato Peel Pie Society',
        'The Invisible Life of Addie LaRue',
        'Room',
      ],
      correctAnswer: 3,
      explanation: 'The description points to Room by Emma Donoghue.',
    ),
    Question(
      question: 'Identify the book: A young man joins a Depression-era circus.',
      answers: [
        'The Princess Bride',
        'The Book of Lost Names',
        'Water for Elephants',
        'The Time Traveler\'s Wife',
      ],
      correctAnswer: 2,
      explanation:
          'The description points to Water for Elephants by Sara Gruen.',
    ),
    Question(
      question: 'Identify the book: A relationship is complicated by involuntary time travel.',
      answers: [
        'The Paris Library',
        'The Time Traveler\'s Wife',
        'The Lovely Bones',
        'The Neverending Story',
      ],
      correctAnswer: 1,
      explanation: 'The description points to The Time Traveler\'s Wife by Audrey Niffenegger.',
    ),
    Question(
      question: 'Identify the book: A murdered girl narrates while watching her family.',
      answers: [
        'The Lovely Bones',
        'The Shadow of the Wind',
        'Coraline',
        'The Tattooist of Auschwitz',
      ],
      correctAnswer: 0,
      explanation:
          'The description points to The Lovely Bones by Alice Sebold.',
    ),
    Question(
      question: 'Identify the book: A boy discovers a mysterious book in postwar Barcelona.',
      answers: [
        'The Nightingale',
        'The Graveyard Book',
        'The Water Dancer',
        'The Shadow of the Wind',
      ],
      correctAnswer: 3,
      explanation: 'The description points to The Shadow of the Wind by Carlos Ruiz Zafón.',
    ),
    Question(
      question:
          'Identify the book: Two sisters face occupation in wartime France.',
      answers: [
        'The House in the Cerulean Sea',
        'The Underground Railroad',
        'The Nightingale',
        'All the Light We Cannot See',
      ],
      correctAnswer: 2,
      explanation:
          'The description points to The Nightingale by Kristin Hannah.',
    ),
    Question(
      question: 'Identify the book: A blind French girl and German boy\'s paths converge in wartime.',
      answers: [
        'The Memory Police',
        'All the Light We Cannot See',
        'The Alice Network',
        'The Midnight Library',
      ],
      correctAnswer: 1,
      explanation: 'The description points to All the Light We Cannot See by Anthony Doerr.',
    ),
    Question(
      question: 'Identify the book: A female spy network links two timelines.',
      answers: [
        'The Alice Network',
        'The Guernsey Literary and Potato Peel Pie Society',
        'The Invisible Life of Addie LaRue',
        'Klara and the Sun',
      ],
      correctAnswer: 0,
      explanation: 'The description points to The Alice Network by Kate Quinn.',
    ),
    Question(
      question: 'Identify the book: Letters reveal island life after wartime occupation.',
      answers: [
        'The Princess Bride',
        'The Book of Lost Names',
        'Project Hail Mary',
        'The Guernsey Literary and Potato Peel Pie Society',
      ],
      correctAnswer: 3,
      explanation: 'The description points to The Guernsey Literary and Potato Peel Pie Society by Mary Ann Shaffer and Annie Barrows.',
    ),
  ],
  'Hard': [
    Question(
      question: 'Which title matches this premise? A swashbuckling tale of Buttercup and Westley.',
      answers: [
        'The Paris Library',
        'Lessons in Chemistry',
        'The Princess Bride',
        'The Neverending Story',
      ],
      correctAnswer: 2,
      explanation:
          'That premise belongs to The Princess Bride by William Goldman.',
    ),
    Question(
      question: 'Which title matches this premise? A boy enters the world of Fantastica through a book.',
      answers: [
        'The Thursday Murder Club',
        'The Neverending Story',
        'Coraline',
        'The Tattooist of Auschwitz',
      ],
      correctAnswer: 1,
      explanation:
          'That premise belongs to The Neverending Story by Michael Ende.',
    ),
    Question(
      question: 'Which title matches this premise? A girl discovers an alternate home with an Other Mother.',
      answers: [
        'Coraline',
        'The Graveyard Book',
        'The Water Dancer',
        'The Bear and the Nightingale',
      ],
      correctAnswer: 0,
      explanation: 'That premise belongs to Coraline by Neil Gaiman.',
    ),
    Question(
      question: 'Which title matches this premise? A boy is raised by residents of a graveyard.',
      answers: [
        'The House in the Cerulean Sea',
        'The Underground Railroad',
        'The Ocean at the End of the Lane',
        'The Graveyard Book',
      ],
      correctAnswer: 3,
      explanation: 'That premise belongs to The Graveyard Book by Neil Gaiman.',
    ),
    Question(
      question: 'Which title matches this premise? A caseworker visits an unusual magical orphanage.',
      answers: [
        'The Memory Police',
        'The Storied Life of A. J. Fikry',
        'The House in the Cerulean Sea',
        'The Midnight Library',
      ],
      correctAnswer: 2,
      explanation:
          'That premise belongs to The House in the Cerulean Sea by TJ Klune.',
    ),
    Question(
      question: 'Which title matches this premise? A library lets a woman explore alternate lives.',
      answers: [
        '1984',
        'The Midnight Library',
        'The Invisible Life of Addie LaRue',
        'Klara and the Sun',
      ],
      correctAnswer: 1,
      explanation: 'That premise belongs to The Midnight Library by Matt Haig.',
    ),
    Question(
      question: 'Which title matches this premise? A woman is cursed to be forgotten by everyone she meets.',
      answers: [
        'The Invisible Life of Addie LaRue',
        'The Book of Lost Names',
        'Project Hail Mary',
        'Fahrenheit 451',
      ],
      correctAnswer: 0,
      explanation: 'That premise belongs to The Invisible Life of Addie LaRue by V. E. Schwab.',
    ),
    Question(
      question: 'Which title matches this premise? A young woman forges identity documents during wartime.',
      answers: [
        'The Paris Library',
        'Lessons in Chemistry',
        'The Hobbit',
        'The Book of Lost Names',
      ],
      correctAnswer: 3,
      explanation:
          'That premise belongs to The Book of Lost Names by Kristin Harmel.',
    ),
    Question(
      question: 'Which title matches this premise? A librarian works at the American Library in Paris during occupation.',
      answers: [
        'The Thursday Murder Club',
        'The Catcher in the Rye',
        'The Paris Library',
        'The Tattooist of Auschwitz',
      ],
      correctAnswer: 2,
      explanation: 'That premise belongs to The Paris Library by Janet Skeslien Charles.',
    ),
    Question(
      question: 'Which title matches this premise? A prisoner is assigned to tattoo identification numbers.',
      answers: [
        'The Old Man and the Sea',
        'The Tattooist of Auschwitz',
        'The Water Dancer',
        'The Bear and the Nightingale',
      ],
      correctAnswer: 1,
      explanation: 'That premise belongs to The Tattooist of Auschwitz by Heather Morris.',
    ),
    Question(
      question: 'Which title matches this premise? Hiram Walker discovers a mysterious ability called Conduction.',
      answers: [
        'The Water Dancer',
        'The Underground Railroad',
        'The Ocean at the End of the Lane',
        'Lord of the Flies',
      ],
      correctAnswer: 0,
      explanation:
          'That premise belongs to The Water Dancer by Ta-Nehisi Coates.',
    ),
    Question(
      question: 'Which title matches this premise? An enslaved woman escapes through a literalized underground rail system.',
      answers: [
        'The Memory Police',
        'The Storied Life of A. J. Fikry',
        'The Giver',
        'The Underground Railroad',
      ],
      correctAnswer: 3,
      explanation: 'That premise belongs to The Underground Railroad by Colson Whitehead.',
    ),
    Question(
      question: 'Which title matches this premise? Objects and memories vanish under an authoritarian force.',
      answers: [
        '1984',
        'The Alchemist',
        'The Memory Police',
        'Klara and the Sun',
      ],
      correctAnswer: 2,
      explanation: 'That premise belongs to The Memory Police by Yoko Ogawa.',
    ),
    Question(
      question: 'Which title matches this premise? An Artificial Friend observes human relationships.',
      answers: [
        'The Little Prince',
        'Klara and the Sun',
        'Project Hail Mary',
        'Fahrenheit 451',
      ],
      correctAnswer: 1,
      explanation:
          'That premise belongs to Klara and the Sun by Kazuo Ishiguro.',
    ),
    Question(
      question: 'Which title matches this premise? An astronaut awakens alone on a mission to save Earth.',
      answers: [
        'Project Hail Mary',
        'Lessons in Chemistry',
        'The Hobbit',
        'The Color Purple',
      ],
      correctAnswer: 0,
      explanation: 'That premise belongs to Project Hail Mary by Andy Weir.',
    ),
    Question(
      question: 'Which title matches this premise? A chemist becomes an unlikely television cooking host.',
      answers: [
        'The Thursday Murder Club',
        'The Catcher in the Rye',
        'The Bell Jar',
        'Lessons in Chemistry',
      ],
      correctAnswer: 3,
      explanation:
          'That premise belongs to Lessons in Chemistry by Bonnie Garmus.',
    ),
    Question(
      question: 'Which title matches this premise? Retirees investigate murders from a retirement community.',
      answers: [
        'The Old Man and the Sea',
        'Rebecca',
        'The Thursday Murder Club',
        'The Bear and the Nightingale',
      ],
      correctAnswer: 2,
      explanation:
          'That premise belongs to The Thursday Murder Club by Richard Osman.',
    ),
    Question(
      question: 'Which title matches this premise? A girl encounters folklore beings in medieval Russia.',
      answers: [
        'The Secret Garden',
        'The Bear and the Nightingale',
        'The Ocean at the End of the Lane',
        'Lord of the Flies',
      ],
      correctAnswer: 1,
      explanation: 'That premise belongs to The Bear and the Nightingale by Katherine Arden.',
    ),
    Question(
      question: 'Which title matches this premise? A man remembers strange childhood events near a Sussex farm.',
      answers: [
        'The Ocean at the End of the Lane',
        'The Storied Life of A. J. Fikry',
        'The Giver',
        'Anne of Green Gables',
      ],
      correctAnswer: 0,
      explanation: 'That premise belongs to The Ocean at the End of the Lane by Neil Gaiman.',
    ),
    Question(
      question: 'Which title matches this premise? A bookstore owner’s life changes after an unexpected package.',
      answers: [
        '1984',
        'The Alchemist',
        'Watership Down',
        'The Storied Life of A. J. Fikry',
      ],
      correctAnswer: 3,
      explanation: 'That premise belongs to The Storied Life of A. J. Fikry by Gabrielle Zevin.',
    ),
  ],
};
final Map<String, Map<String, List<Question>>> booksCoreQuestionBank = {
  'Classic Literature': {
    'Easy': [
      ..._legacyBookEasy('Classic Literature'),
      ..._classicLiteratureAdditions['Easy']!,
    ],
    'Medium': _classicLiteratureAdditions['Medium']!,
    'Hard': _classicLiteratureAdditions['Hard']!,
  },
  'Fiction': {
    'Easy': [..._legacyBookEasy('Fiction'), ..._fictionAdditions['Easy']!],
    'Medium': _fictionAdditions['Medium']!,
    'Hard': _fictionAdditions['Hard']!,
  },
  'Non-Fiction': {
    'Easy': [
      ..._legacyBookEasy('Non-Fiction'),
      ..._nonFictionAdditions['Easy']!,
    ],
    'Medium': _nonFictionAdditions['Medium']!,
    'Hard': _nonFictionAdditions['Hard']!,
  },
  'Franchises': {
    'Easy': [
      ..._legacyBookEasy('Franchises'),
      ..._franchisesAdditions['Easy']!,
    ],
    'Medium': _franchisesAdditions['Medium']!,
    'Hard': _franchisesAdditions['Hard']!,
  },
  'What Book Am I?': {
    'Easy': [
      ..._legacyBookEasy('What Book Am I?'),
      ..._whatBookAmIAdditions['Easy']!,
    ],
    'Medium': _whatBookAmIAdditions['Medium']!,
    'Hard': _whatBookAmIAdditions['Hard']!,
  },
};
