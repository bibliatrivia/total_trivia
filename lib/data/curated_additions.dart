// Curated question additions; paired with the existing reviewed bank.
// Sources: National Archives (Constitution, Amendments), and Luke 1–2/Matthew 1–2.
import '../models/question.dart';

final Map<String, Map<String, Map<String, List<Question>>>> curatedAdditions = {
  "History": {
    "The Constitution": {
      "Easy": [
        Question(
          question: "How many years are in one term for a U.S. president?",
          answers: ["Four", "Two", "Six", "Eight"],
          correctAnswer: 0,
          explanation: "Article II sets a four-year presidential term.",
        ),
        Question(
          question: "How long is one term for a member of the U.S. House of Representatives?",
          answers: ["Four years", "Two years", "Six years", "Eight years"],
          correctAnswer: 1,
          explanation: "Article I, Section 2 sets a two-year House term.",
        ),
        Question(
          question: "How long is a full term for a U.S. senator?",
          answers: ["Two years", "Four years", "Six years", "Eight years"],
          correctAnswer: 2,
          explanation:
              "Article I, Section 3 establishes six-year Senate terms.",
        ),
        Question(
          question: "How many articles were in the original U.S. Constitution?",
          answers: ["Five", "Six", "Eight", "Seven"],
          correctAnswer: 3,
          explanation: "The original Constitution contains seven articles.",
        ),
        Question(
          question: "In which city did delegates meet for the Constitutional Convention of 1787?",
          answers: ["Philadelphia", "New York City", "Boston", "Richmond"],
          correctAnswer: 0,
          explanation: "The 1787 convention met in Philadelphia.",
        ),
        Question(
          question: "Which amendment protects freedom of the press?",
          answers: ["Third", "First", "Fifth", "Seventh"],
          correctAnswer: 1,
          explanation: "The First Amendment protects freedom of speech and of the press.",
        ),
        Question(
          question: "Which amendment protects against unreasonable searches and seizures?",
          answers: ["First", "Third", "Fourth", "Sixth"],
          correctAnswer: 2,
          explanation: "The Fourth Amendment addresses unreasonable searches and seizures.",
        ),
        Question(
          question: "Which amendment guarantees assistance of counsel to a person accused in a federal criminal prosecution?",
          answers: ["Fourth", "Fifth", "Seventh", "Sixth"],
          correctAnswer: 3,
          explanation: "The Sixth Amendment guarantees assistance of counsel for the accused in criminal prosecutions.",
        ),
        Question(
          question: "Which amendment restricts quartering soldiers in homes during peacetime without the owner’s consent?",
          answers: ["Third", "First", "Fourth", "Seventh"],
          correctAnswer: 0,
          explanation: "The Third Amendment limits quartering soldiers in private homes.",
        ),
        Question(
          question: "Which amendment says the voting age cannot be set above 18 for otherwise qualified citizens on account of age?",
          answers: [
            "Twenty-fourth",
            "Twenty-sixth",
            "Twenty-first",
            "Seventeenth",
          ],
          correctAnswer: 1,
          explanation: "The Twenty-sixth Amendment protects voting rights for citizens 18 and older from age-based denial.",
        ),
      ],
      "Medium": [
        Question(
          question: "Which article requires states generally to respect the public acts, records, and judicial proceedings of other states?",
          answers: ["Article IV", "Article II", "Article V", "Article VII"],
          correctAnswer: 0,
          explanation: "Article IV includes the Full Faith and Credit Clause.",
        ),
        Question(
          question: "Which level of government receives the express power to coin money in Article I?",
          answers: [
            "State courts",
            "Congress",
            "State governors",
            "The Supreme Court",
          ],
          correctAnswer: 1,
          explanation:
              "Article I, Section 8 grants Congress the power to coin money.",
        ),
        Question(
          question: "Under Article II, who serves as commander in chief of the U.S. armed forces?",
          answers: [
            "Chief justice",
            "Speaker of the House",
            "President",
            "Secretary of State",
          ],
          correctAnswer: 2,
          explanation: "Article II, Section 2 designates the president commander in chief.",
        ),
        Question(
          question: "Which amendment prohibits denying voting rights on account of race, color, or previous condition of servitude?",
          answers: ["Fourteenth", "Nineteenth", "Twenty-fourth", "Fifteenth"],
          correctAnswer: 3,
          explanation: "The Fifteenth Amendment establishes that protection.",
        ),
        Question(
          question: "Which amendment bars poll taxes as a condition of voting in federal elections?",
          answers: [
            "Twenty-fourth",
            "Nineteenth",
            "Twenty-sixth",
            "Twenty-third",
          ],
          correctAnswer: 0,
          explanation: "The Twenty-fourth Amendment prohibits poll taxes in federal elections.",
        ),
        Question(
          question: "Which amendment gives the District of Columbia presidential electors?",
          answers: [
            "Twentieth",
            "Twenty-third",
            "Twenty-second",
            "Twenty-fifth",
          ],
          correctAnswer: 1,
          explanation: "The Twenty-third Amendment provides for presidential electors from the District.",
        ),
        Question(
          question: "Which amendment expressly permits federal income taxes without apportionment among the states?",
          answers: ["Thirteenth", "Fourteenth", "Sixteenth", "Seventeenth"],
          correctAnswer: 2,
          explanation: "The Sixteenth Amendment permits taxes on incomes without apportionment.",
        ),
        Question(
          question: "Which amendment repealed national alcohol prohibition established by the Eighteenth Amendment?",
          answers: ["Eighteenth", "Nineteenth", "Twentieth", "Twenty-first"],
          correctAnswer: 3,
          explanation:
              "The Twenty-first Amendment repealed the Eighteenth Amendment.",
        ),
        Question(
          question: "When the office of vice president is vacant, which amendment provides for a presidential nominee confirmed by both houses of Congress?",
          answers: ["Twenty-fifth", "Twelfth", "Twentieth", "Twenty-second"],
          correctAnswer: 0,
          explanation: "Section 2 of the Twenty-fifth Amendment governs vice-presidential vacancies.",
        ),
        Question(
          question: "Under the Twentieth Amendment, on which date does a presidential term end at noon?",
          answers: ["March 4", "January 20", "January 3", "February 1"],
          correctAnswer: 1,
          explanation: "The Twentieth Amendment sets the end of a presidential term at noon on January 20.",
        ),
      ],
      "Hard": [
        Question(
          question: "For a treason conviction under Article III, what testimony suffices when there is no confession in open court?",
          answers: [
            "Two witnesses to the same overt act",
            "One witness to each of two different acts",
            "A jury vote without witnesses",
            "A written accusation by Congress",
          ],
          correctAnswer: 0,
          explanation: "Article III, Section 3 requires two witnesses to the same overt act or confession in open court.",
        ),
        Question(
          question: "For the president to make a treaty with Senate consent, what fraction of senators present must concur?",
          answers: [
            "Three-fifths",
            "Two-thirds",
            "Three-fourths",
            "A simple majority",
          ],
          correctAnswer: 1,
          explanation: "Article II, Section 2 requires two-thirds of senators present to concur.",
        ),
        Question(
          question: "Who presides when the U.S. Senate tries an impeachment of the president?",
          answers: [
            "Vice president",
            "Speaker of the House",
            "Chief justice",
            "Attorney general",
          ],
          correctAnswer: 2,
          explanation: "Article I, Section 3 specifies the chief justice.",
        ),
        Question(
          question: "Under Article I, what constitutes a quorum in either house of Congress?",
          answers: ["One-third", "Two-thirds", "Three-fourths", "A majority"],
          correctAnswer: 3,
          explanation: "Article I, Section 5 requires a majority for a quorum.",
        ),
        Question(
          question: "If no presidential candidate has an electoral majority under the Twelfth Amendment, how does the House cast votes to choose a president?",
          answers: [
            "By state delegations, with each state having one vote",
            "By individual member, with each having one vote",
            "By the Senate delegations only",
            "By the Supreme Court justices",
          ],
          correctAnswer: 0,
          explanation: "The Twelfth Amendment provides that House votes are taken by states.",
        ),
        Question(
          question: "Who has the expressed power to grant letters of marque and reprisal under Article I?",
          answers: [
            "The president alone",
            "Congress",
            "State governors",
            "Federal district courts",
          ],
          correctAnswer: 1,
          explanation: "Article I, Section 8 grants that power to Congress.",
        ),
        Question(
          question: "Under Article IV, forming a new state from parts of existing states requires consent of Congress and which other bodies?",
          answers: [
            "The Supreme Court",
            "The Electoral College",
            "The legislatures of the states concerned",
            "The president alone",
          ],
          correctAnswer: 2,
          explanation: "Article IV, Section 3 requires approval of affected state legislatures and Congress.",
        ),
        Question(
          question: "Which part of the original Constitution contains the Privileges and Immunities Clause for citizens of the several states?",
          answers: ["Article I", "Article II", "Article III", "Article IV"],
          correctAnswer: 3,
          explanation: "Article IV, Section 2 contains the Privileges and Immunities Clause.",
        ),
        Question(
          question: "Who may make exceptions and regulations for the Supreme Court’s appellate jurisdiction under Article III?",
          answers: [
            "Congress",
            "The president",
            "The chief justice alone",
            "State legislatures collectively",
          ],
          correctAnswer: 0,
          explanation: "Article III, Section 2 describes appellate jurisdiction subject to exceptions and regulations Congress makes.",
        ),
        Question(
          question: "Which type of law is Congress expressly barred from passing under Article I, Section 9?",
          answers: [
            "A law creating post offices",
            "An ex post facto law",
            "A law establishing federal courts",
            "A law regulating interstate commerce",
          ],
          correctAnswer: 1,
          explanation: "Article I, Section 9 prohibits bills of attainder and ex post facto laws.",
        ),
      ],
    },
  },
  "Holidays": {
    "Christmas Nativity": {
      "Easy": [
        Question(
          question: "Which woman was expecting a child when Mary visited her in Luke 1?",
          answers: ["Elizabeth", "Anna", "Martha", "Salome"],
          correctAnswer: 0,
          explanation: "Mary visited her relative Elizabeth, who was expecting John (Luke 1:36-40).",
        ),
        Question(
          question: "What was Zechariah’s occupation in Luke 1?",
          answers: ["Merchant", "Priest", "Fisherman", "Soldier"],
          correctAnswer: 1,
          explanation:
              "Zechariah was a priest of the division of Abijah (Luke 1:5).",
        ),
        Question(
          question: "Which region of Israel contained Nazareth, where Gabriel visited Mary?",
          answers: ["Judea", "Samaria", "Galilee", "Idumea"],
          correctAnswer: 2,
          explanation: "Luke 1:26 places Nazareth in Galilee.",
        ),
        Question(
          question:
              "What happened to Zechariah after he doubted the angel’s news?",
          answers: [
            "He lost his sight",
            "He left his home",
            "He was imprisoned",
            "He could not speak",
          ],
          correctAnswer: 3,
          explanation: "Zechariah became unable to speak until the promised events occurred (Luke 1:20).",
        ),
        Question(
          question: "What happened to Elizabeth’s unborn child when Mary greeted her?",
          answers: [
            "The child leaped",
            "The child fell asleep",
            "The child cried aloud",
            "The child became silent",
          ],
          correctAnswer: 0,
          explanation: "Elizabeth’s unborn child leaped when Mary greeted her (Luke 1:41).",
        ),
        Question(
          question: "What did the shepherds do as they returned from seeing the baby?",
          answers: [
            "Built a house",
            "Praised God",
            "Traveled to Rome",
            "Visited Herod",
          ],
          correctAnswer: 1,
          explanation: "Luke 2:20 says the shepherds returned glorifying and praising God.",
        ),
        Question(
          question:
              "Who kept and pondered the events of Jesus’ birth in her heart?",
          answers: ["Elizabeth", "Anna", "Mary", "Martha"],
          correctAnswer: 2,
          explanation:
              "Luke 2:19 says Mary treasured and pondered these things.",
        ),
        Question(
          question: "Which name did the child receive on the eighth day according to Luke 2?",
          answers: ["John", "Immanuel", "Joseph", "Jesus"],
          correctAnswer: 3,
          explanation: "Luke 2:21 says the baby was named Jesus.",
        ),
        Question(
          question: "Which angel announced the birth of John the Baptist to Zechariah?",
          answers: ["Gabriel", "Michael", "Raphael", "Uriel"],
          correctAnswer: 0,
          explanation: "Gabriel identified himself when speaking to Zechariah (Luke 1:19).",
        ),
        Question(
          question: "What did a crowd of heavenly beings do after the angel appeared to the shepherds?",
          answers: [
            "Announced a census",
            "Praised God",
            "Questioned Herod",
            "Asked for lodging",
          ],
          correctAnswer: 1,
          explanation: "Luke 2:13-14 describes a heavenly host praising God.",
        ),
      ],
      "Medium": [
        Question(
          question: "From which priestly family was Elizabeth descended, according to Luke 1:5?",
          answers: ["Aaron", "Levi’s son Gershon", "Zadok", "Eli"],
          correctAnswer: 0,
          explanation:
              "Luke 1:5 identifies Elizabeth as a descendant of Aaron.",
        ),
        Question(
          question: "Approximately how long did Mary remain with Elizabeth?",
          answers: ["Forty days", "Three months", "Six months", "One year"],
          correctAnswer: 1,
          explanation: "Luke 1:56 says Mary stayed about three months.",
        ),
        Question(
          question: "What sacred task was Zechariah performing when an angel appeared to him?",
          answers: [
            "Offering a grain tithe",
            "Carrying the ark",
            "Burning incense",
            "Announcing a feast",
          ],
          correctAnswer: 2,
          explanation:
              "Zechariah was in the temple to burn incense (Luke 1:9-11).",
        ),
        Question(
          question: "Where was Zechariah performing his priestly duty when the angel appeared?",
          answers: [
            "A palace courtyard",
            "A synagogue in Nazareth",
            "A field near Bethlehem",
            "The temple sanctuary",
          ],
          correctAnswer: 3,
          explanation: "Luke 1:9-11 situates the encounter inside the temple.",
        ),
        Question(
          question: "How does Luke describe Elizabeth and Zechariah’s difficulty before John was conceived?",
          answers: [
            "They had no children and were both advanced in age",
            "They lived far from their relatives",
            "They had been exiled from Judea",
            "They had lost their farm",
          ],
          correctAnswer: 0,
          explanation:
              "Luke 1:7 says they were childless and both advanced in years.",
        ),
        Question(
          question:
              "How does Luke describe Simeon, who met Jesus at the temple?",
          answers: [
            "A soldier and official",
            "Righteous and devout",
            "A fisherman and merchant",
            "A Levite and king",
          ],
          correctAnswer: 1,
          explanation: "Luke 2:25 describes Simeon as righteous and devout.",
        ),
        Question(
          question: "In which general region did Mary visit Elizabeth?",
          answers: [
            "The coast of Galilee",
            "The wilderness east of the Jordan",
            "The hill country of Judea",
            "The plains of Sharon",
          ],
          correctAnswer: 2,
          explanation:
              "Luke 1:39 places Mary’s visit in the hill country of Judea.",
        ),
        Question(
          question: "How did the angel address Joseph in the dream recorded in Matthew 1?",
          answers: [
            "Joseph, son of Abraham",
            "Joseph, son of Levi",
            "Joseph, son of Aaron",
            "Joseph, son of David",
          ],
          correctAnswer: 3,
          explanation: "Matthew 1:20 calls Joseph “son of David.”",
        ),
        Question(
          question: "On which day after birth was Jesus circumcised and named, according to Luke 2:21?",
          answers: [
            "The eighth day",
            "The third day",
            "The twelfth day",
            "The fortieth day",
          ],
          correctAnswer: 0,
          explanation:
              "Luke 2:21 describes circumcision and naming on the eighth day.",
        ),
        Question(
          question: "What was Mary and Joseph’s relationship before the birth, as described in Matthew 1?",
          answers: [
            "Already divorced",
            "Pledged to be married",
            "Unknown to each other",
            "Cousins",
          ],
          correctAnswer: 1,
          explanation:
              "Matthew 1:18 describes Mary as pledged to marry Joseph.",
        ),
      ],
      "Hard": [
        Question(
          question: "To whom does Luke address the opening of his Gospel?",
          answers: ["Theophilus", "Cornelius", "Titus", "Apollos"],
          correctAnswer: 0,
          explanation: "Luke 1:3 addresses Theophilus.",
        ),
        Question(
          question: "For how many months did Elizabeth remain secluded after she conceived?",
          answers: ["Three", "Five", "Seven", "Nine"],
          correctAnswer: 1,
          explanation:
              "Luke 1:24 says Elizabeth remained secluded for five months.",
        ),
        Question(
          question: "How was Zechariah selected to enter the temple and burn incense?",
          answers: [
            "By the governor’s decree",
            "By appointment from Herod",
            "By lot",
            "By the people’s vote",
          ],
          correctAnswer: 2,
          explanation: "Luke 1:9 says he was chosen by lot according to priestly custom.",
        ),
        Question(
          question: "How did Gabriel describe his position when speaking to Zechariah?",
          answers: [
            "One of the twelve apostles",
            "A priest of the temple",
            "A guardian of Jerusalem",
            "Standing in the presence of God",
          ],
          correctAnswer: 3,
          explanation:
              "Gabriel says he stands in the presence of God (Luke 1:19).",
        ),
        Question(
          question: "Who is named as Joseph’s father in Matthew’s genealogy?",
          answers: ["Jacob", "Heli", "Jesse", "Matthan"],
          correctAnswer: 0,
          explanation: "Matthew 1:16 names Jacob as the father of Joseph.",
        ),
        Question(
          question:
              "What personal sorrow did Simeon foretell for Mary in Luke 2?",
          answers: [
            "That she would be exiled to Babylon",
            "That a sword would pierce her own soul",
            "That she would never return to Nazareth",
            "That she would become a widow immediately",
          ],
          correctAnswer: 1,
          explanation: "Luke 2:35 says a sword would pierce Mary’s own soul.",
        ),
        Question(
          question: "Elizabeth was in which month of pregnancy when Gabriel spoke to Mary?",
          answers: ["Third", "Fourth", "Sixth", "Eighth"],
          correctAnswer: 2,
          explanation: "Luke 1:26, 36 place the annunciation in Elizabeth’s sixth month.",
        ),
        Question(
          question: "What did Zechariah do immediately after his speech was restored?",
          answers: [
            "He offered a sacrifice",
            "He traveled to Bethlehem",
            "He confronted Herod",
            "He praised God",
          ],
          correctAnswer: 3,
          explanation: "Luke 1:64 says Zechariah began praising God.",
        ),
        Question(
          question: "Where did the visitors from the east find the child in Matthew 2:11?",
          answers: [
            "In a house",
            "In a temple courtyard",
            "In a stable explicitly named",
            "In a field with shepherds",
          ],
          correctAnswer: 0,
          explanation: "Matthew 2:11 describes the visitors entering a house.",
        ),
        Question(
          question: "According to Matthew 2, in what city did the visitors from the east first inquire about the newborn king?",
          answers: ["Bethlehem", "Jerusalem", "Nazareth", "Hebron"],
          correctAnswer: 1,
          explanation: "Matthew 2:1-2 says the visitors came to Jerusalem and asked about the newborn king.",
        ),
      ],
    },
  },
};
