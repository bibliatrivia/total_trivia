import '../models/question.dart';

// Independently authored starter material; expand these banks before launch.
final Map<String, Map<String, Map<String, List<Question>>>>
sampleQuestionBanks = {
  "Sports": {
    "Football": {
      "Easy": [
        Question(
          question:
              'How many points is a touchdown worth in American football?',
          answers: ['Six', 'Three', 'Seven', 'Two'],
          correctAnswer: 0,
          explanation:
              'A touchdown scores six points before conversion attempts.',
        ),
        Question(
          question: 'Which player usually throws passes in American football?',
          answers: ['Center', 'Quarterback', 'Kicker', 'Linebacker'],
          correctAnswer: 1,
          explanation: 'The quarterback commonly leads the passing offense.',
        ),
        Question(
          question:
              'How many yards does an offense typically need for a first down?',
          answers: ['Five', 'Fifteen', 'Ten', 'Twenty'],
          correctAnswer: 2,
          explanation: 'Offenses generally need to advance ten yards to earn a new set of downs.',
        ),
        Question(
          question: 'Which league plays the Super Bowl?',
          answers: ['NBA', 'MLB', 'NHL', 'NFL'],
          correctAnswer: 3,
          explanation: 'The Super Bowl is the NFL championship game.',
        ),
        Question(
          question: 'How many points is a standard field goal worth?',
          answers: ['Three', 'Two', 'Four', 'Six'],
          correctAnswer: 0,
          explanation: 'An ordinary successful field goal scores three points.',
        ),
        Question(
          question: 'How many players per team are on the field at one time in American football?',
          answers: ['Nine', 'Eleven', 'Ten', 'Twelve'],
          correctAnswer: 1,
          explanation: 'Each American football team fields eleven players.',
        ),
        Question(
          question:
              'What is it called when the defense catches an opponent’s pass?',
          answers: ['Fumble', 'Punt', 'Interception', 'Safety'],
          correctAnswer: 2,
          explanation:
              'An interception occurs when a defensive player catches a pass.',
        ),
        Question(
          question: 'What is the usual name for kicking the ball away on fourth down?',
          answers: ['Snap', 'Spike', 'Handoff', 'Punt'],
          correctAnswer: 3,
          explanation: 'A punt changes field position by kicking the ball to the opponent.',
        ),
        Question(
          question: 'How many points is a safety worth in American football?',
          answers: ['Two', 'One', 'Three', 'Six'],
          correctAnswer: 0,
          explanation:
              'A safety typically scores two points for the defending team.',
        ),
        Question(
          question: 'Which piece of equipment protects an American football player’s head?',
          answers: ['Cleats', 'Helmet', 'Jersey', 'Gloves'],
          correctAnswer: 1,
          explanation: 'A helmet is designed to protect the head.',
        ),
      ],
      "Medium": [
        Question(
          question: 'What is the maximum number of downs an offense receives before it must gain a first down or lose possession?',
          answers: ['Four', 'Three', 'Five', 'Six'],
          correctAnswer: 0,
          explanation: 'There are four downs in a standard series.',
        ),
        Question(
          question:
              'Which offensive player snaps the ball to start a standard play?',
          answers: ['Tight end', 'Center', 'Fullback', 'Wide receiver'],
          correctAnswer: 1,
          explanation: 'The center begins the play by snapping the ball.',
        ),
        Question(
          question: 'What is the name of a pass caught behind the line of scrimmage that still counts as a forward pass?',
          answers: ['Lateral', 'Punt', 'Screen pass', 'Hail Mary'],
          correctAnswer: 2,
          explanation: 'A screen pass is often caught behind the line, with blockers ahead.',
        ),
        Question(
          question:
              'What must a defender do for a quarterback sack to be recorded?',
          answers: [
            'Intercept a pass beyond midfield',
            'Force a receiver out of bounds',
            'Block an extra point',
            'Tackle a passing quarterback behind the line of scrimmage',
          ],
          correctAnswer: 3,
          explanation: 'A sack occurs when the quarterback is tackled behind the line before completing a pass play.',
        ),
        Question(
          question:
              'How many points does a successful two-point conversion score?',
          answers: ['Two', 'One', 'Three', 'Four'],
          correctAnswer: 0,
          explanation: 'A successful try from scrimmage after a touchdown scores two points.',
        ),
        Question(
          question: 'Which penalty is associated with an offensive player moving illegally before the snap?',
          answers: [
            'Offside',
            'False start',
            'Pass interference',
            'Roughing the passer',
          ],
          correctAnswer: 1,
          explanation:
              'A false start is an illegal pre-snap movement by the offense.',
        ),
        Question(
          question: 'What is the term for a running back carrying the ball behind blockers near the line?',
          answers: ['Kick return', 'Interception', 'Rushing play', 'Touchback'],
          correctAnswer: 2,
          explanation: 'Rushing refers to advancing the ball by running.',
        ),
        Question(
          question: 'Which line indicates where the ball is placed to begin the next play?',
          answers: ['Goal line', 'Sideline', 'End line', 'Line of scrimmage'],
          correctAnswer: 3,
          explanation: 'The line of scrimmage runs through the ball’s spot.',
        ),
        Question(
          question:
              'In the NFL, how long is a regulation game, excluding overtime?',
          answers: ['60 minutes', '48 minutes', '50 minutes', '70 minutes'],
          correctAnswer: 0,
          explanation: 'Four 15-minute quarters make 60 regulation minutes.',
        ),
        Question(
          question: 'What is the name for a defensive tactic that sends extra rushers toward the quarterback?',
          answers: ['Draw', 'Blitz', 'Sweep', 'Audible'],
          correctAnswer: 1,
          explanation:
              'A blitz sends additional defenders to pressure the passer.',
        ),
      ],
      "Hard": [
        Question(
          question: 'Which NFL team won the first Super Bowl, played in January 1967?',
          answers: [
            'Green Bay Packers',
            'Kansas City Chiefs',
            'Dallas Cowboys',
            'Baltimore Colts',
          ],
          correctAnswer: 0,
          explanation: 'Green Bay defeated Kansas City in the first AFL–NFL championship game.',
        ),
        Question(
          question: 'What is the official NFL name of the foul when a defensive player grabs and twists an opponent’s facemask?',
          answers: [
            'Illegal shift',
            'Facemask',
            'Neutral-zone infraction',
            'Ineligible receiver',
          ],
          correctAnswer: 1,
          explanation: 'The facemask foul covers specified grabbing or twisting of the facemask.',
        ),
        Question(
          question: 'Which formation places three receivers on one side of an offense?',
          answers: ['I-formation', 'Wishbone', 'Trips', 'Pro set'],
          correctAnswer: 2,
          explanation:
              'Trips refers to three eligible receivers aligned to one side.',
        ),
        Question(
          question: 'Who is credited with popularizing the West Coast offense as San Francisco 49ers head coach?',
          answers: ['Vince Lombardi', 'Tom Landry', 'Chuck Noll', 'Bill Walsh'],
          correctAnswer: 3,
          explanation:
              'Bill Walsh helped develop and popularize that passing scheme.',
        ),
        Question(
          question: 'Which defensive alignment traditionally places four down linemen and three linebackers on the field?',
          answers: ['4–3', '3–4', '5–2', '4–4'],
          correctAnswer: 0,
          explanation: 'The name 4–3 denotes four defensive linemen and three linebackers.',
        ),
        Question(
          question: 'What term describes an offensive play that deliberately makes a pass rush look successful before handing the ball to a runner?',
          answers: [
            'Flea flicker',
            'Draw play',
            'Quarterback sneak',
            'End-around',
          ],
          correctAnswer: 1,
          explanation: 'A draw play disguises a run as a passing play.',
        ),
        Question(
          question: 'Which player won the first Super Bowl Most Valuable Player award?',
          answers: [
            'Joe Namath',
            'Johnny Unitas',
            'Bart Starr',
            'Roger Staubach',
          ],
          correctAnswer: 2,
          explanation: 'Bart Starr was MVP of Super Bowl I.',
        ),
        Question(
          question: 'On an NFL field, how far apart are the two goal lines?',
          answers: ['110 yards', '120 yards', '90 yards', '100 yards'],
          correctAnswer: 3,
          explanation: 'The field of play between goal lines is 100 yards; end zones add depth.',
        ),
        Question(
          question: 'Which term describes a defender lining up directly opposite a receiver in man-to-man coverage?',
          answers: [
            'Press coverage',
            'Cover 2 zone',
            'Prevent defense',
            'Spy coverage',
          ],
          correctAnswer: 0,
          explanation: 'Press coverage involves aligning close to a receiver, often at the line.',
        ),
        Question(
          question: 'Which NFL team completed a 17–0 season by winning Super Bowl VII?',
          answers: [
            'Pittsburgh Steelers',
            'Miami Dolphins',
            'New England Patriots',
            'Washington Redskins',
          ],
          correctAnswer: 1,
          explanation: 'The 1972 Miami Dolphins finished 17–0, including the postseason.',
        ),
      ],
    },
  },
  "History": {
    "US History": {
      "Easy": [
        Question(
          question: 'Who was the first president of the United States?',
          answers: [
            'George Washington',
            'Thomas Jefferson',
            'John Adams',
            'James Madison',
          ],
          correctAnswer: 0,
          explanation:
              'George Washington became the first U.S. president in 1789.',
        ),
        Question(
          question: 'Which document declared the American colonies independent in 1776?',
          answers: [
            'Articles of Confederation',
            'Declaration of Independence',
            'Bill of Rights',
            'Emancipation Proclamation',
          ],
          correctAnswer: 1,
          explanation:
              'The Declaration of Independence was adopted in July 1776.',
        ),
        Question(
          question: 'Which war was fought between the Union and Confederacy?',
          answers: [
            'War of 1812',
            'Spanish–American War',
            'American Civil War',
            'Revolutionary War',
          ],
          correctAnswer: 2,
          explanation: 'The American Civil War took place from 1861 to 1865.',
        ),
        Question(
          question: 'Who wrote most of the first draft of the Declaration of Independence?',
          answers: [
            'Benjamin Franklin',
            'John Hancock',
            'John Jay',
            'Thomas Jefferson',
          ],
          correctAnswer: 3,
          explanation: 'Thomas Jefferson drafted the principal text.',
        ),
        Question(
          question: 'In which year did the United States declare independence?',
          answers: ['1776', '1787', '1812', '1865'],
          correctAnswer: 0,
          explanation: 'The Declaration of Independence was adopted in 1776.',
        ),
        Question(
          question: 'What is the name of the ship that brought a group of English settlers to Plymouth in 1620?',
          answers: ['Santa María', 'Mayflower', 'HMS Victory', 'Constitution'],
          correctAnswer: 1,
          explanation: 'The Mayflower carried the Plymouth settlers.',
        ),
        Question(
          question: 'Which president issued the Emancipation Proclamation?',
          answers: [
            'Andrew Jackson',
            'Ulysses S. Grant',
            'Abraham Lincoln',
            'Theodore Roosevelt',
          ],
          correctAnswer: 2,
          explanation: 'Lincoln issued the proclamation in 1863.',
        ),
        Question(
          question: 'Which territory did the United States purchase from France in 1803?',
          answers: [
            'Alaska',
            'Florida',
            'Oregon Country',
            'Louisiana Territory',
          ],
          correctAnswer: 3,
          explanation:
              'The Louisiana Purchase was negotiated with France in 1803.',
        ),
        Question(
          question: 'What is the collective name for the first ten amendments to the U.S. Constitution?',
          answers: [
            'Bill of Rights',
            'Federalist Papers',
            'Articles of Confederation',
            'Great Compromise',
          ],
          correctAnswer: 0,
          explanation: 'The Bill of Rights is the first ten amendments.',
        ),
        Question(
          question: 'Which ocean borders the eastern United States?',
          answers: [
            'Pacific Ocean',
            'Atlantic Ocean',
            'Indian Ocean',
            'Arctic Ocean',
          ],
          correctAnswer: 1,
          explanation:
              'The Atlantic lies east of the continental United States.',
        ),
      ],
      "Medium": [
        Question(
          question: 'Which constitutional convention took place in Philadelphia in 1787?',
          answers: [
            'Constitutional Convention',
            'Hartford Convention',
            'Seneca Falls Convention',
            'Annapolis Convention',
          ],
          correctAnswer: 0,
          explanation: 'Delegates met in Philadelphia in 1787 to draft the Constitution.',
        ),
        Question(
          question:
              'Who served as the first chief justice of the United States?',
          answers: [
            'John Marshall',
            'John Jay',
            'Roger Taney',
            'Oliver Ellsworth',
          ],
          correctAnswer: 1,
          explanation: 'John Jay was the first chief justice.',
        ),
        Question(
          question: 'What was the name of the 1803 Supreme Court case establishing judicial review?',
          answers: [
            'Dred Scott v. Sandford',
            'Plessy v. Ferguson',
            'Marbury v. Madison',
            'McCulloch v. Maryland',
          ],
          correctAnswer: 2,
          explanation: 'Marbury v. Madison is associated with judicial review.',
        ),
        Question(
          question: 'Which battle marked the major American victory that led to British surrender negotiations in 1781?',
          answers: ['Saratoga', 'Bunker Hill', 'Trenton', 'Yorktown'],
          correctAnswer: 3,
          explanation:
              'British forces under Cornwallis surrendered at Yorktown.',
        ),
        Question(
          question: 'Which amendment abolished slavery in the United States?',
          answers: ['Thirteenth', 'Twelfth', 'Fourteenth', 'Fifteenth'],
          correctAnswer: 0,
          explanation: 'The Thirteenth Amendment abolished slavery, except as punishment for a crime.',
        ),
        Question(
          question: 'Which 1862 law encouraged settlement of public land by eligible applicants?',
          answers: [
            'Dawes Act',
            'Homestead Act',
            'Sherman Act',
            'Kansas–Nebraska Act',
          ],
          correctAnswer: 1,
          explanation:
              'The Homestead Act supported settlement through land claims.',
        ),
        Question(
          question: 'Which president negotiated the Louisiana Purchase?',
          answers: [
            'James Monroe',
            'John Quincy Adams',
            'Thomas Jefferson',
            'Martin Van Buren',
          ],
          correctAnswer: 2,
          explanation:
              'The purchase took place under Jefferson’s administration.',
        ),
        Question(
          question: 'Which 19th-century abolitionist published the newspaper The North Star?',
          answers: [
            'William Lloyd Garrison',
            'Sojourner Truth',
            'Harriet Tubman',
            'Frederick Douglass',
          ],
          correctAnswer: 3,
          explanation: 'Frederick Douglass established The North Star in 1847.',
        ),
        Question(
          question: 'Which agreement ended the Mexican–American War in 1848?',
          answers: [
            'Treaty of Guadalupe Hidalgo',
            'Treaty of Ghent',
            'Treaty of Paris 1783',
            'Adams–Onís Treaty',
          ],
          correctAnswer: 0,
          explanation: 'The Treaty of Guadalupe Hidalgo ended the war.',
        ),
        Question(
          question:
              'Who was president when the United States entered World War I?',
          answers: [
            'Warren Harding',
            'Woodrow Wilson',
            'Theodore Roosevelt',
            'William Taft',
          ],
          correctAnswer: 1,
          explanation:
              'Wilson was president when the United States entered in 1917.',
        ),
      ],
      "Hard": [
        Question(
          question: 'Which compromise proposed a bicameral Congress with proportional representation in the House and equal representation in the Senate?',
          answers: [
            'Connecticut Compromise',
            'Missouri Compromise',
            'Compromise of 1850',
            'Crittenden Compromise',
          ],
          correctAnswer: 0,
          explanation:
              'The Connecticut or Great Compromise shaped Congress in 1787.',
        ),
        Question(
          question: 'Which Supreme Court decision upheld a national bank under implied congressional powers in 1819?',
          answers: [
            'Gibbons v. Ogden',
            'McCulloch v. Maryland',
            'Worcester v. Georgia',
            'Marbury v. Madison',
          ],
          correctAnswer: 1,
          explanation: 'McCulloch v. Maryland confirmed implied powers and federal supremacy.',
        ),
        Question(
          question: 'Which diplomat negotiated the Treaty of Portsmouth ending the Russo-Japanese War in 1905 as U.S. president?',
          answers: [
            'William Howard Taft',
            'Woodrow Wilson',
            'Theodore Roosevelt',
            'Grover Cleveland',
          ],
          correctAnswer: 2,
          explanation: 'Roosevelt helped mediate the treaty negotiations.',
        ),
        Question(
          question: 'Who was the principal author of the 1786 Virginia Statute for Religious Freedom?',
          answers: [
            'Patrick Henry',
            'George Mason',
            'James Monroe',
            'Thomas Jefferson',
          ],
          correctAnswer: 3,
          explanation: 'Jefferson authored the statute, which passed in 1786.',
        ),
        Question(
          question: 'Which 1890 federal law targeted monopolistic business combinations?',
          answers: [
            'Sherman Antitrust Act',
            'Clayton Act',
            'Interstate Commerce Act',
            'Pendleton Act',
          ],
          correctAnswer: 0,
          explanation: 'The Sherman Antitrust Act was enacted in 1890.',
        ),
        Question(
          question: 'Which 1824 presidential candidate won the presidency after the House of Representatives decided the election?',
          answers: [
            'Andrew Jackson',
            'John Quincy Adams',
            'Henry Clay',
            'William Crawford',
          ],
          correctAnswer: 1,
          explanation: 'The House chose John Quincy Adams after no candidate won an electoral majority.',
        ),
        Question(
          question: 'What name was given to the 1832 crisis over South Carolina’s attempt to reject a federal tariff?',
          answers: [
            'Whiskey Rebellion',
            'XYZ Affair',
            'Nullification Crisis',
            'Hartford Convention',
          ],
          correctAnswer: 2,
          explanation: 'South Carolina claimed it could nullify federal tariffs, creating the crisis.',
        ),
        Question(
          question: 'Which amendment changed the start date of presidential terms from March to January?',
          answers: [
            'Seventeenth',
            'Twenty-Second',
            'Twenty-Fifth',
            'Twentieth',
          ],
          correctAnswer: 3,
          explanation: 'The Twentieth Amendment moved presidential inaugurations to January 20.',
        ),
        Question(
          question: 'Which early American agreement organized a federal government before the Constitution was ratified?',
          answers: [
            'Articles of Confederation',
            'Northwest Ordinance',
            'Federalist Papers',
            'Treaty of Paris',
          ],
          correctAnswer: 0,
          explanation: 'The Articles of Confederation served as the first U.S. national governing framework.',
        ),
        Question(
          question: 'Which 1906 law authorized federal inspection of meat processing for interstate commerce?',
          answers: [
            'Pure Food and Drug Act',
            'Federal Meat Inspection Act',
            'Sherman Act',
            'Hepburn Act',
          ],
          correctAnswer: 1,
          explanation: 'The Federal Meat Inspection Act established federal meat inspection requirements.',
        ),
      ],
    },
  },
};
