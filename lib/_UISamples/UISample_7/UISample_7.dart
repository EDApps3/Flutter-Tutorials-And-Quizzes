import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';


String LP1_ImgPath="Images/LifePath/LP1.jpg";
String LP1_Title="The Innovative Leader";
String LP1_Desc=
 "A born leader, you’re self-motivated, independent, and a hard worker.\n"
 "You thrive in a competitive environment, although you often get sidetracked by listening to the non-stop voice of criticism in your head, whispering incessantly: “You’re not good enough.” Make sure to practice turning the channel when you start listening to that station!\n\n"
 "In your life, you go through three tiers of development.\n"
 "First, you realize and question the way in which you feel dependent.  This shows up in various ways and yet is primarily lodged in your feelings of dependency on your family or surroundings to the point where you question yourself in relationship to this form of identity.\n\n"
 "The second aspect of development usually shows up as rebellion as you attempt to extract yourself from your feelings of dependence and individuate yourself.  This takes a while.\n\n"
 "Then, if you’re able to manage this successfully and come out with a healthy sense of independence, then it’s time for you to move forward into achievement.\n\n"
 "As an individualist, you’ve most likely felt unique in many ways. You have innovative and advanced creative ideas.  Yet when you’re feeling insecure, you feel you just don’t fit in or belong anywhere, as though you’re really out of sync with the demands and expectations of the world.\n\n"
 "When you’re being your authentic self, you’re the kindest, most trustworthy, compassionate, and compelling individual.\n\n"
 "When you aren’t feeling confident, you tend to be pushy, defensive, aggressive, and angry. Those emotions are your chosen outlets when you’re struggling with feelings of unworthiness.\n\n"
 "It’s crucial for you to work on honing your skill at anything you do, whether that means your job skills, communication skills, or relationship skills. Reaching a level of expertise instills you with a reliable sense of self-confidence.\n\n"
 "As a 1 Life Path, having complete trust in the skills you’ve learned and mastered will serve as a kind of “security blanket” for you when you’re feeling insecure or your sense of confidence is under fire.\n\n"
 "Having the ability to fall back on high-level skills you know inside out will stabilize you and get you back in your game.\n\n"
 "You’re a pioneer, an innovator, and capable of great success and achievement in the world. You need to be in charge and managing in some way. You would make a great entrepreneur or inventor. Often the highest and best use of your abilities is when you mastermind a project, get it up and running, make sure management systems are in place, and then you’re off to the next venture. You might feel stagnant if you don’t allow yourself to tackle new challenges.\n\n"
 "You’re full of creative energy, so embrace your creativity and understand that this is your gift. Imagine new things, introduce new concepts, and then delegate the details and either move on with another project or continue developing your project while taking it to the next level of success.\n\n"
 "Anything that calls for tapping into your unique voice, independent action, and decision-making is your forte.\n\n"
 "As you develop your leadership skills, nurture the best in others and understand that creativity flourishes in an atmosphere of inner security and confidence. You must open up, take risks, and step off the beaten path. Your constant challenge is to consistently and consciously develop your sense of being self assured, self-directed, and centered.\n\n"
 "Since you’re all about #1, you can tend to see only your own wants and needs and have trouble listening to anyone else’s point of view.  When this happens, “1” can truly be the loneliest number. You’re more powerful when you take the lead, yet know that you aren’t an island.  If you’re successful, it’s because of the participation of others in manifesting your vision.  Make sure you share your gratitude.\n\n"
 "Common threads when a 1 Life Path is “on fire” from working with optimal energies are boldness, innovation, risk taking, resilience, and following the inner voice.";


String LP2_ImgPath="Images/LifePath/LP2.jpg";
String LP2_Title="The Intuitive Diplomat";
String LP2_Desc=
 "The 2 Life Path is a lover, not a fighter.\n\n"
 "You’re a seeker of harmony and deeply loathe conflict. You’re happiest when you’re being of service to yourself, your family, your group, or when you’re excelling in a service-oriented career. Working in a group environment is often the best for you to achieve success.\n\n"
 "You’re the detail person, the one everyone turns to in order to get the job done and get it done right.\n\n"
 "You thrive in an environment of support and solid direction, so you may not enjoy working for yourself or might not find ultimate success or happiness as an independent contractor.\n\n"
 "The energy of the 2 Life Path is very sensitive, so much so that you get your feelings hurt every day in ways no one but you can understand. Even you don’t understand the degree to which you’re emotionally wounded day in and day out.\n\n"
 "One of your lifelong learning lessons is in setting strong emotional boundaries and not being a “shape shifter” who changes who you are in order to please others or keep the peace.\n\n"
 "The 2 energy is all about love. You crave giving and receiving unconditional love. That desire combined with a strong sense of service and emotional sensitivity brings amazing things into your life, as well as consistent challenges. The trick is not to focus on needing love to the point of desperation.\n\n"
 "Since you’re so sensitive and also want to give and get love all the time, you may have a tendency to smother your loved ones or have expectations that can never be met. On the flip-side, you may back away from wanting love because it hurts too badly. When you can come to an understanding about how to balance your intense need for love, you’ll feel secure and supported. The trick for you is to give yourself the acknowledgement you need, rather than seeking it from outside sources.\n\n"
 "The 2 Life Path tends to gravitate toward relationships and family life.\n"
 "You often serve as a supportive, dependable, caring helpmate when you’re working with your most positive aspects. Your trademark is a tendency to do everything for everybody to the point where you feel drained.\n\n"
 "Even though you’re here to serve and love, from the outside people may observe that you give yourself a little too much credit. You aren’t meant to receive intense validation from external sources.\n\n"
 "Why not?\n"
 "Because learning to give yourself your own kudos is part of the challenge of the 2 Life Path. Oftentimes you judge yourself on what everyone else says or thinks about you. Your challenge is to develop your internal compass and turn inward for validation.\n\n"
 "You must be careful not to take on the problems of the people you love, who are more than happy for you to do so! It’s best not to place yourself completely at the disposal of others because soon you’ll get angry and resentful for being used and unappreciated.\n\n"
 "When you end up living in the destructive aspects of the 2 energy, no one knows what you want, including you!\n\n"
 "You’re too preoccupied doing what you think you’re supposed to do and are quick to expect others should do the same. You’re in a chronic state of co-dependence. Your giving turns to resentment, as you give too much, and then you withdraw completely.\n\n"
 "Common threads when a 2 Life Path is working with optimal energies are harmonizing, fair-mindedness, service orientation, loving, diplomacy, patience.";



String LP3_ImgPath="Images/LifePath/LP3.jpg";
String LP3_Title="The Creative Communicator";
String LP3_Desc=
  "The 3 Life Path is meant to perform and take center stage, however you personally define this.\n\n"
  "You love creativity, communication, and connecting with people. The 3 energy is truly the energy of joie de vivre (the joy of life).  If you’re working the constructive aspects of the 3 energy, you’re connected with your emotions—and you have a lot of them. You communicate brilliantly and clearly. You consolidate information easily and know how to rework that information into new ideas. You embrace your brimming creative impulses with gusto.\n\n"
  "You’re a natural writer, actor, counselor, or teacher.  Any profession where you can present your ideas to an audience is right up your alley. You aren’t a 9-to-5  job person; you don’t necessarily work well under the supervision of others or within a rigid structure.\n\n"
  "Part of your life’s purpose is to develop impeccable communication on all levels.\n\n"
  "Many 3’s spend years learning to gauge that they even have emotions and then they spend more years learning how to express them.\n\n"
  "One of your biggest obstacles is your intense self-doubt. Feelings of insecurity can stop you in your tracks and literally stun you into submission. While everyone experiences self-doubt at certain times in their lives, this is a ruling factor of your life when you’re on the 3 Life Path.\n\n"
  "Avoid getting stuck over-analyzing or over thinking every single thing. You’ll mud wrestle with “analysis paralysis” over and over again.In relationships, you can be romantic and fiercely loyal. You have a tendency not to let go of past relationships. You mull them around in your head again and again, picking apart things said and done, what could’ve been and what wasn’t. You level blame on yourself and on others. You tend to obsess over the smallest emotional hooks that bog you in a pool of cynicism or emotional defeat.\n\n"
  "The 3 Life Path can struggle with depression, experiencing extreme highs and lows. If you’re not using your talents, you’ll experience mood swings. When you realize that your journey is an emotional one, you can learn how to manage the ups and downs more effectively. You must be careful about with whom you spend your time because you will attract “takers” if you aren’t careful.\n\n"
  "Overall, you can be the life of the party: clever, witty, the clown, entertaining, and good company. You make a great host or hostess and people feel nurtured and comfortable around you. You make it all look so easy.\n\n"
  "In fact, one of the pressures of the 3 Life Path is that you’re so good at everything you do you have a difficult time choosing what to focus on.  So many ideas, so little time.\n\n"
  "It’s not surprising to find many 3 Life Paths in entertainment, politics, or any other industry that requires expert communication skills, intellect, and a good sense of humor.\n\n"
  "Common threads when a 3 Life Path is working with optimal energies are being dynamic, self-assured, joyful, emotionally balanced, expressive, and inspiring.\n\n";



String LP4_ImgPath="Images/LifePath/LP4.jpg";
String LP4_Title="The Systems Builder & Teacher";
String LP4_Desc=
  "A 4 Life Path is all about developing stability through slow and steady processes. You’re cerebral, intelligent, and a seeker of knowledge.\n\n"
  "If you were to audition for the cast of Winnie the Pooh, you would land the role of Owl.\n\n"
  "Because you know how to build solid foundations, you’re often placed in charge of developing operating systems and are expected to look after the details. You’re the workhorse and “master builder” of the world.\n\n"
  "You devour information so that when you find a topic or subject that interests you, there’s no end to the depth of your knowledge about it and your ability to impart that knowledge to others.\n\n"
  "You’re a born teacher. You may not become a teacher in the traditional sense, yet you demonstrate an undeniable depth of knowledge and just can’t help sharing what you know with others.\n\n"
  "While you can certainly have a sense of humor and moments of lightheartedness, you tip the scales toward seriousness, brainy activity, and rational thought. You’re the first to say you don’t want to argue and yet you most often end up in arguments because you tend to be opinionated about things you feel you know a lot about.\n\n"
  "Your mantra: “I don’t want to argue, but let me tell you why I’m right!”\n\n"
  "Home is important to you. You crave a sense of security that “home” exemplifies.\n\n"
  "One of the primary issues faced by the 4 Life Path is the necessity to work through problems with family of origin. While all of us have family history to deal with, the 4 Life Path rides a particularly intense road with family that’s at the core of the healing and learning you’ve come here to do.\n\n"
  "In order to work optimally with the gifts of the 4 Life Path, you need to look at your wounded or problematic relationships and work through the feelings of lack and pain they’ve brought to you.\n\n"
  "Because of your volatile past, you have a desire to protect— yourself, things, and the people around you. You like things that are tangible and solid. Honesty is crucial to you, especially in relationships.\n\n"
  "Because of the high-intensity way you absorb and process information, you need to take plenty of time for yourself and cultivate peace and quiet in your environment. This is imperative for your mental and physical health.\n\n"
  "You have a sensible, traditional, well-behaved way about you and aren’t “into” people who are otherwise. You don’t understand people who are big risk takers, don’t follow the rules, or don’t thrive in a traditional work or family environment.\n\n"
  "You feel most comfortable when you’re moving slowly and deliberately. You work out your plan and want your life to be orderly. Underneath that planning is a fear of chaos and a real dislike of appearing stupid or naïve in any situation.\n\n"
  "Overall, you’re eminently practical, hardworking, and determined. No matter what, you’ll get it done.\n\n"
  "One of the primary issues the number 4 must come to terms with is limitation — both the limitations that are externally imposed on you and also the limitations that you impose upon yourself.\n\n"
  "Part of your life’s journey is to learn to get outside of your own box and take a chance or a risk once in a while.\n\n"
  "Common threads when a 4 Life Path is “on fire” and working with optimal energies are being practical and detail oriented, sharing knowledge, and working to establish a sense of security.";



String LP5_ImgPath="Images/LifePath/LP5.jpg";
String LP5_Title="The Sensual Freedom Seeker";
String LP5_Desc=
  "FREEDOM. FUN. FEARLESSNESS. ADVENTURE. All in capital letters!\n"
  "This vibration contains a lot of intense energy and so you have an intense life. You insist on variety and get bored easily. In fact, you need and seek constant stimulation. Escape is the name of your game. You love passion and are here to experience the raw physicality of life on Earth in every way, shape, and form you can muster.\n\n"
  "Your desire for experience manifests itself in many different ways, through all the sensual and tactile experiences you can grab hold of.\n\n"
  "Your life is all about the senses. You long to experience everything in its fullest degree. Things must taste right, smell good, look pretty, and feel pleasing or you’re just not happy.\n\n"
  "If you aren’t making use of your high energy and drive, life can easily turn into a soap opera. You’re the Drama Queen or Drama King, whipping up excitement wherever you go.\n\n"
  "If you’re a 5 Path, you can’t stand a clingy partner. “Do not control me” is your mantra.  A 5 Path needs a lot of space and freedom, especially early in life.\n\n"
  "You’re likely to be entrepreneurial and would rather not be subject to someone else’s authority.\n\n"
  "There’s a wild side to you because you’d truly rather be dead than bored.  Your threshold for what you consider boring is pretty low. You also may escape in TV, movies, and books if you don’t feel that your actual life is up to your high-drama standards.\n\n"
  "You often struggle with a constant sense of restlessness and a feeling of restriction or containment.\n\n"
  "Since you’re all about sensual pleasures, you can be quick to jump in and out of relationships and can be lured away by the promise of more passion, sex, and excitement elsewhere.\n\n"
  "Deep down you’re probably not interested in commitment, or at least not until you have burned through some years of high intensity and sensual exploration.\n\n"
  "What you need to know is that you basically operate without a filter. Other people don’t experience life with the same emotional intensity you do and it may take you a while to fully understand this distinction.\n\n"
  "You experience everything in a big way and in what I call “ADHD time.” By this I mean that you have all sorts of information swirling around you all of the time and you find it difficult to choose a focal point. You feel you must experience little tidbits of all of it. It’s like you’re a little kid who won’t go to sleep at night when your parents have company over for the evening because you’re afraid you’ll miss out on something.\n\n"
  "Your job is to develop self-discipline and routine in your life so that you have a container for your boundless energy and for the information you’re taking in. If you don’t establish discipline, routine, and a focused sense of purpose, your life will be entirely too chaotic and out of control.\n\n"
  "You relish sensual and earthy pleasures. Yet, if you become enmeshed in seeking constant sensual stimulation, you could find yourself struggling with addictions.\n\n"
  "Be aware that your desire for fun, adventure, sensual pleasure, and escape will draw you into seeking “highs,” whether you gain peak experiences through sex, food, drugs, alcohol, travel, or overwork. Any addictive behavior that feels initially comforting to you will most likely become problematic later.\n\n"
  "The downside to your experience might be that you become engulfed by fear and turn into the “anti-adventurer,” seeking solace in drudgery, paranoia, hyper-sensitivity, overeating (or undereating), and victimization.\n\n"
  "Expansion, change, resilience, fearlessness, and progressive thought and action are your key values. When you shut down those aspects of yourself, you start to deteriorate and your life becomes smaller and smaller.\n\n"
  "If you find yourself resisting the major components of your 5 Life Path, you’ll experience depression, anxiety, and frustration galore. If you can take your powerful energy and intentions into a framework, then you’ll create a wonderfully productive, satisfying, and exciting life for yourself.\n\n"
  "Common threads when a 5 Life Path is working with optimal energies are fearlessness, adventurousness, self-discipline, and the ability to show others how to live their lives fearlessly.";





String LP6_ImgPath="Images/LifePath/LP6.jpg";
String LP6_Title="The Nurturing Visionary";
String LP6_Desc=
 "A person with a 6 Life Path is a natural nurturer, visionary, and champion of justice.\n\n"
 "You lean toward love and marriage like the proverbial “horse and carriage.” If you choose not to be a parent, you’ll parent in other ways: with pets, co-workers, and friends. There’s a distinct nurturing quality to you, which is coupled with a heightened sense of responsibility.\n\n"
 "Have you ever noticed that people are drawn to you, almost as if you’re a magnet?\n\n"
 "Do people come to you with their problems and ask for your help? Do people place you in positions of responsibility even though you don’t ask for it? These are all aspects of your vibration that you need to get used to, and embrace. If you dislike being “the responsible one,” you’ll live a life of frustration and resentment.\n\n"
 "Knowing that more responsibility will be thrown your way allows you to utilize your innate skills and talents in these areas with a compassionate heart.\n\n"
 "Your life’s work resides in consciously balancing your sense of responsibility — not too much, not too little.\n\n"
 "You’re brilliantly creative and must find ways to use your creativity constructively. Many 6 Life Path’s are extremely musically gifted or are gifted with other artistically creative endeavors.\n\n"
 "Just know that “responsibility” is a key theme for you throughout your life.  Spoiler alert:  It won’t go away.\n\n"
 "In any event, domestic tranquility is actually the goal for you, no matter what you’re doing. You’ll prefer to manage or own your own business, since you find it hard to work for others.\n\n"
 "You also have trouble taking advice or instruction from others. Let’s face it — you’re a bit of a control freak.  Just understand that this is something you’ll need to take a look at every once in a while.\n\n"
 "Another major element of the 6 Life Path is being visionary. You have a gift of seeing the bigger picture and can’t understand why others can’t. Given your visionary qualities, you’re also a perfectionist.\n\n"
 "When you’re feeling unappreciated, undervalued, or overwhelmed, your tendency is to feel  self-righteous, lofty, and superior to everyone else, and you make no bones about communicating this to those around you. You wonder why everyone can’t be like you, think the way you do, and share your same values.  You often feel everyone else is “wrong” because they don’t believe the same things you do or behave in the same manner as you.\n\n"
 "You’re a connoisseur of beauty. You seek to beautify the world in whatever fashion you can.  Many 6 Life Paths are drawn to careers in the beauty industry, including the fields of makeup, hairdressing, and interior design.\n\n"
 "You’re an “If you want something done right you just have to do it yourself” kind of person. You want to feel indispensable and then resent being indispensable, even though you’re the one who set it up that way.\n\n"
 "The bottom line is that you’re working optimally when you’re seeing the perfection in everyone and everything at whatever juncture they’re in with their own process. That includes you. When you let go of the “should” and instead rely on your wonderful sense of nurturing, compassion, and service, you’ll be the most content.\n\n"
 "Common threads when a 6 Life Path is “on fire” and working with optimal energies are being reasonably responsible and capable of allowing others their own journeys without judging and criticizing them, allowing for personal imperfections, being nurturing, and trusting in a personal vision of the “big picture.”\n\n";




String LP7_ImgPath="Images/LifePath/LP7.jpg";
String LP7_Title="The Analyst and (sometimes reluctant) Spiritualist";
String LP7_Desc=
 "You were born to learn to have faith in yourself and in others. There is a lot of spiritual energy surrounding you, so you need a strong spiritual base. You would excel as a philosopher, analyst, or researcher because you’re always seeking truth and knowledge, and love delving into life’s mysteries.\n\n"
 "You tend to devour information and excel when you’re able to consolidate meaning out of a stack of data and then share your findings with like-minded people. It’s as though you’re a character in the TV show The Big Bang Theory — a little geeky in your own charming way.\n\n"
 "Do you feel as though you’re a little out of place in the world? Many 7 Life Paths feel as though they’re old souls who are here exploring the material world. You’re most often on a different wavelength than other people.  You’re bright, intelligent, and intense. You’re good with technical problems, at writing, and in discovering things.\n\n"
 "Do you feel intuitive? You have a natural intuitive ability that is in some ways at odds with your highly analytic mind. This can be a point of confusion for you. On one hand, you’re all about data, knowledge, and research, and you need accepted systems of thought to operate in your chosen realm.\n\n"
  "On the other hand, you’re constantly receiving intuitive data that you can’t qualify or quantify and it may scare you. Either you block and suppress your intuition—which could lead to dissatisfaction and ill health—or you learn to respect and balance both aspects of your highly calibrated mind.\n\n"
  "Perhaps you experience the opposite: You fully embrace your psychic awareness and refuse to use your grounded, analytical abilities.\n\n"
  "Either way, inviting both aspects of your cognition (analysis and intuition) to co-exist and co-create can have a profoundly positive impact on your life.\n\n"
  "Really, at the end of the day, yours is a highly internal journey where you’re primarily purpose is to get to know who you are in the deepest, most authentic and soulful way.  And this will take a lifetime. Because of the push-and-pull between your belief in hard data and your intuition, it’s important for you to take time alone periodically to regroup.\n\n"
  "In Numerology, the 7 is the number of contemplation and of being alone.  Often those on a 7 Life Path prefer to spend good portions of their lives on their own.\n\n"
  "Meditation is imperative. Nature is rejuvenating. You flourish and relax when you connect with the environment in some way. You need consistent exercise to move your energy around as well. Self-care is necessary for you to have a balanced life.\n\n"
  "In healthy, loving relationships, you tend to be honest, loyal, and direct. Even so, you often have trouble being supportive or praising your partner. This behavior is based on a fear that your loved ones might realize you’re not “good enough” for them and will leave you. The irony is that if people do leave it’s because they feel undervalued and neglected.\n\n"
  "You’re learning how to connect emotionally, both to yourself and to other people.\n\n"
  "You can have a sharp tongue, so you need to think about your style of communication and the goals you have for communicating. You tend to get stuck in your head. You’ll over-analyze everything and every situation.\n\n"
  "You’re also not always the best at understanding people’s wants and needs. You have an air of secrecy about you and enjoy a sense of mystery. You’re often a classic introvert.\n\n"
  "You may appear aloof to others, yet you are simply observing the world and processing it in your own way. If you don’t operate with the higher-level vibration the 7 Life Path Number brings with it, then you’re probably exhausting to be around because you will focus on petty things and can appear to be somewhat shallow.\n\n"
  "In some ways, it’s as if you’re visiting the planet because you really don’t feel as though you’re from here. If you lack the anchor of solid spiritual beliefs, you’ll attempt to escape the rather mundane routine of daily life. When you’re off track and lack psycho-spiritual resources, you’re drawn to drugs, alcohol, sex, excessive travel, or overwork.\n\n"
  "Powerful intuition, refinement, science, and philosophy are your strengths in a lifetime optimally devoted to study and inner reflection.\n\n"
  "Common threads when a 7 Life Path is working with optimal energies are being attuned equally to intuition and intellect, wisdom, being at peace with yourself, and not being afraid of opening up emotionally to others.";




String LP8_ImgPath="Images/LifePath/LP8.jpg";
String LP8_Title="The CEO & Material Manifester";
String LP8_Desc=
 "The lesson of the 8 Life Path is how to manage your personal relationship with power and money.\n\n"
 "This path is about establishing and building financial security. You seek the freedom that comes from being financially stable. From early on, your drive will center on money in one way or another. And usually this comes with a more intense love/hate relationship with money.\n\n"
 "The 8 Life Path isn’t particularly easy sailing, since you’re meant to use power, influence, authority, and control to make a positive difference in the world. You’re guaranteed to have big “Authority Issues” early in your life – and possibly all your life.\n\n"
 "This path is intense and demands a great deal of discipline, wisdom, and fortitude.\n\n"
 "Your first testing ground will be in the arena of your personal power.  You’ll often experience difficult childhood experiences that test your will, stamina, resolve, and fortitude to stand up for yourself in a healthy way and move into bigger realms of achievement.\n\n"
 "The manta for the 8:  Step up or get stepped on!\n\n"
 "Once you accept that yours is a life meant for success and achievement, the real work begins. You’ve got excellent executive and entrepreneurial skills. A key for you is to think big and find the right processes and people to support you in your enterprises.\n\n"
 "The 8 Life Path is fairly unforgiving: You don’t get away with much. If you’re driving five miles over the speed limit surrounded by ten other cars doing the same thing, you’re the one who’ll get a ticket. It may not seem fair, but that’s the way it is.\n\n"
 "Resilience is another 8 Life Path trait. Your ethics will be tested again and again.\n"
 "You see things in a black-and-white manner with little room for gray. You may be the classic workaholic, which partly comes from wanting to be a great provider.\n\n"
 "Like the 4 Life Path, the 8 Life Path is rife with family issues. Understand that you’ve endured some profound experiences in your life, and either you can be ground up and spit out by them or you can choose to see them as your favorite teachers—that they were hard on you gave you the opportunity to learn about yourself. Strife and struggle can be used to your advantage because through them you’ll develop a thick skin for discomfort and also some great skills and tools to help you obtain your goals.\n"
 "A caution: 8 Life Paths can have reoccurring health issues because of stress and addiction, even though your constitution is the most hearty and resilient of all the numbers.\n\n"
 "Interestingly, being on the 8 Life Path, with its emphasis on money and power, is no guarantee that you’ll live a charmed financial life. Understand this:  The 8 is all about mastering the art of success in the material world — money, power, control, authority.\n\n"
 "It doesn’t give you a particularly charmed and easy time with money.  You will need to give concerted effort, organization, management, and resolve to making things happen and to define and meet your goals.\n\n"
 "While everyone in the world has to deal with money, for you, money is a central theme and a central focus of your life.  You think in business-like ways and money is important to you, one way or the other!\n\n"
 "An 8 Path person is just as likely to be drawn toward scarcity. The number 8 is an amplifier. The 8 vibration provides the energy with which to achieve financial abundance through concerted effort, ethical conduct, and attention to your higher purpose.\n\n"
 "As an 8 Life Path, take heart. It’s not willy-nilly or random chance that you find yourself in the trenches over and over again. The tough stuff is the core of this vibration, making the ultimate rewards you get for your efforts even sweeter.\n\n"
 "Common threads when an 8 Life Path is “on fire” and working with optimal energies are being at ease with financial abundance, using power and authority wisely and for the good of others, not dwelling in the negative or becoming a victim to circumstances, and being abundantly giving of time, money, and influence to make the world a better place.";




String LP9_ImgPath="Images/LifePath/LP9.jpg";
String LP9_Title="The Charismatic & Creative Humanitarian";
String LP9_Desc=
 "The 9 Life Path is the most evolved in numerology and has one of the strongest vibrations because it contains the qualities of all the other numbers.\n\n"
 "If your belief system supports the idea of reincarnation, you might be relieved to know that the 9 vibration is that of a wise old soul, returning to wrap things up. If you don’t believe in reincarnation, you’ll still be relieved to know that your life is meant to be expansive and spiritually challenging.\n\n"
 "Yours is truly a lifetime to focus fully and completely on letting go and surrendering, and on gaining and acting upon higher spiritual principals, however you define them.\n\n"
 "You’ve a strong inclination to follow something you believe in and you’ll pursue this with great ambition and drive. You have an authentic regard for humanity, so your goals usually involve serving others in some way.\n\n"
 "One of the characteristics of your 9 Life Path is that you often have issues with your original family. You may have felt unloved or abandoned as a child, or perhaps responsible for your parents.You often feel out of place, as though you don’t really belong.\n\n"
 "In any event, your attachment to your original family is hard to give up. Unlike the 4 Life Path or the 8 Life Path, your family issues often reside more distinctly in enmeshment and co-dependence.\n\n"
 "You must find a way to maintain healthy personal boundaries with your family and find the courage to leave unhealthy dynamics behind. You’re all about transformation and letting go, so extracting yourself from an unhealthy sense of family identity is part of your plan.\n\n"
 "This isn’t to say that you say “good-bye” to your family and never see them. This means that you define yourself for who you are and allow your family members to do the same.  Just some good ole’ healthy emotional and physical boundaries are needed in a special way for you.\n\n"
 "You’re at your best when you engage your spiritual side and listen to you intuitive inner voice, which is crystal clear when you remove your mental clutter.\n\n"
 "A note of caution: You do such a great job at taking care of everybody’s business that when you’re in trouble or need support, people don’t even notice. You must let your guard down and ask for what you need. Your needs aren’t easily read by others—you have to ask for help.\n\n"
 "The 9 Life Path is learning how to give and how to receive.\n\n"
 "You can have an intimidating quality and yet putting others at ease is actually one of your gifts if you cultivate it. You’re sometimes accused of being patronizing because you have a tendency to preach rather than being an active listener.\n\n"
 "A live long lesson for you is to work with the idea that you get limited rewards for your service\n\n"
 "Your higher purpose is to inspire others with your compassion for humanity. You’re in your element when you’re inspiring others by your example, not by what you say.\n\n"
 "You have incredible charisma and can choose to use that in either positive or negative ways.  You also would do well in a creative field. Many gifted musicians, comedians, actors, and artists are on the 9 Life Path.\n\n"
 "You would make a wildly successful entrepreneur or businessperson if it’s with something you feel wholeheartedly passionate about. You must choose work that has meaning for you. When you’re optimizing your energy, you’re a powerful force for change and transformation.\n\n"
 "You hold the constructive elements of all of the other numbers in numerology, and you hold all of the challenging elements as well.\n\n"
 "Your amazing potential reminds me of the 2008 film The Curious Case of Benjamin Button, a story in which Benjamin is born an old man in an infant’s body. As he matures, he meets himself in the middle of his life and then begins to become younger as time passes. He eventually dies of old age as an infant again. The key element to take away from Benjamin Button’s story is that he flows through his life with awe and appreciation, with a healthy sense of detachment, soaking in all of his experiences in the moment, observing  other people, engaging in love, and not clinging to any single part of his multilayered life journey.\n\n"
 "You’re certainly at your best when you’re moving with the flow rather than ensconced in old stories about the past and replaying old hurtful experiences or even replaying only the happy “Disney Moments” in your mind. It’s all a matter of balance and perspective.\n\n"
 "Take care not to live in the past. Move forward as you gently release yesterday, live today, and embrace tomorrow.\n\n"
 "Common threads when an 9 Life Path is “on fire” and working with optimal energies are giving back to the world with gifts and talents, detachment from old family wounds, empathetic listening, and being open to new experiences every day.";









void main() {
  runApp(UISample7());
}



class UISample7 extends StatefulWidget {
  @override
  _UISample7State createState() => _UISample7State();
}

class _UISample7State extends State<UISample7>   {
  var DayController=TextEditingController();
  var MonthController=TextEditingController();
  var YearController=TextEditingController();
  var Result="Waiting...";



  @override
  initState() {
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
  }


  
Padding LPCard(String Num,String LPTitle,String LPDesc,String LPImgSrc,LifePathInfoPage Redirect){
  return Padding(
   padding: const EdgeInsets.all(8.0),
    child: Container(
      width:MediaQuery.of(context).size.width,
      height:120,
      child:Stack(
        children: <Widget>[
          Row(children: <Widget>[
            SizedBox(width:75,),       
            Container(
              height:100, 
                width:MediaQuery.of(context).size.width-95, 
                child:Card(child:ListTile(
                   title:Padding(
                     padding: const EdgeInsets.only(left:12,right:0,top:0,bottom:0),
                     child: Text(LPTitle),
                   ),
                   subtitle:Padding(
                     padding: const EdgeInsets.only(left:12,right:0,top:0,bottom:0),
                     child: Text(
                       LPDesc,
                       overflow:TextOverflow.ellipsis,
                       maxLines:3, 
                       textAlign:TextAlign.justify,
                     ),
                   ),
                   onTap:(){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Redirect));
                   },
                  ),
                 ),
                ),
               ],
              ),   
              ClipOval(
                child:Container(
                  width:100, 
                  height:100, 
                   decoration:BoxDecoration(
                   image:DecorationImage(
                    fit:BoxFit.cover,
                    image:AssetImage("Images/LifePath/NCircle.png"),
                   )
                   ),
                  child:Center(child:Text(Num),)
                  ),
                ),
              
            ],
          ),
        ),
     );
}




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
            title:Text("LifePath Number"),
        ),
        body:ListView(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color:Colors.grey[200],
                child:Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child:
                       Text(
                         "What Is LifePath Number?",
                         style:TextStyle(
                           fontSize:17,
                           fontWeight:FontWeight.bold,
                         ),
                       ),
                    ),
                    Divider(),
                     Padding(
                      padding: const EdgeInsets.all(3.0),
                      child:
                       Text(
                         "The Life Path number is calculated from your birth date. It's like the sun sign in astrology.In numerology we work with the numbers 1-9.And then there are Master numbers 11, 22, and 33. Having a Master Number in your chart isn’t better or worse than having a “regular” number. In fact, if your Life Path is a Master number it means you have intensified obstacles—as well as heightened potential—in your life.",
                         style:TextStyle(
                           fontSize:13,
                           fontWeight:FontWeight.bold,
                         ),
                       ),
                    ),

                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color:Colors.grey[200],
                child:Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child:
                       Text(
                         "Calculate Your Number!",
                         style:TextStyle(
                           fontSize:17,
                           fontWeight:FontWeight.bold,
                         ),
                       ),
                    ),
                    Divider(),
                     Padding(
                      padding: const EdgeInsets.all(3.0),
                      child:Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Day:"),
                          TextField(
                           controller:DayController,
                           keyboardType:TextInputType.number,
                           decoration:InputDecoration(hintText:"Example:9"),
                          ),
                          Text("Month:"),
                          TextField(
                           controller:MonthController,
                           keyboardType:TextInputType.number,
                           decoration:InputDecoration(hintText:"Example:10"),
                          ),
                          Text("Year:"),
                          TextField(
                           controller:YearController,
                           keyboardType:TextInputType.number,
                           decoration:InputDecoration(hintText:"Example:1997"),
                          ),
                          SizedBox(
                            width:double.infinity,
                            child:RaisedButton(
                              child:Text("Calculate"),
                              onPressed:(){
                                var Day  =int.parse(DayController.text);
                                var Month=int.parse(MonthController.text);
                                var Year =int.parse(YearController.text);
                                var NewDay,NewMonth,NewYear;
                                Result="Result:";
                                                                  print(DayController.text);


                                if(DayController.text.length>1 && DayController.text!="11" && DayController.text!="22"){
                                  var N1=int.parse(DayController.text[0]);
                                  var N2=int.parse(DayController.text[1]);
                                  NewDay=N1+N2;
                                  Result=Result+"\nDay => $N1 + $N2 => $NewDay";
                                }
                                else{
                                  NewDay=Day;
                                  Result=Result+"\nDay => $NewDay";
                                }

                                if(MonthController.text.length>1 && MonthController.text!="11"){
                                  var N1=int.parse(MonthController.text[0]);
                                  var N2=int.parse(MonthController.text[1]);
                                  NewMonth=N1+N2;
                                  Result=Result+"\nMonth => $N1 + $N2 => $NewMonth";
                                }
                                else{
                                  NewMonth=Month;
                                  Result=Result+"\nMonth => $NewMonth";
                                }

                                if(YearController.text.length==4){
                                  var N1=int.parse(YearController.text[0]);
                                  var N2=int.parse(YearController.text[1]);
                                  var N3=int.parse(YearController.text[2]);
                                  var N4=int.parse(YearController.text[3]);

                                  NewYear=N1+N2+N3+N4;
                                  Result=Result+"\nYear => $N1 + $N2 + $N3 + $N4 => $NewYear";
                                }
                                var FS=NewDay+NewMonth+NewYear;  
                                Result=Result+"\n-------------------\n $NewDay + $NewMonth + $NewYear => $FS \n-------------------\n";

                                if(FS.toString().length==1){
                                  Result=Result+"Your Number : $FS";
                                }
                                else{
                                  var N1=int.parse(FS.toString()[0]);
                                  var N2=int.parse(FS.toString()[1]);
                                  var Num=N1+N2;
                                  Result=Result+"Your Number : $N1 + $N2 => $Num";
                                }
 

  
                                setState(() {
                                  
                                });  


                              },
                            ),
                          ),
                          Text("Result:$Result"),
                        ],
                      )
                    ),

                  ],
                ),
              ),
            ),

            LPCard("1","LifePath Number 1",LP1_Desc,LP1_ImgPath,
              LifePathInfoPage(
                LPAppBarTitle:"LifePath Number 1",
                LPTitle:LP1_Title,
                LPDesc: LP1_Desc,
                LPImage: LP1_ImgPath,
              ),
            ),

            LPCard("2","LifePath Number 2",LP2_Desc,LP2_ImgPath,
              LifePathInfoPage(
                LPAppBarTitle:"LifePath Number 2",
                LPTitle:LP2_Title,
                LPDesc: LP2_Desc,
                LPImage:LP2_ImgPath,
              ),
            ),

            LPCard("3","LifePath Number 3",LP3_Desc,LP3_ImgPath,
              LifePathInfoPage(
                LPAppBarTitle:"LifePath Number 3",
                LPTitle:LP3_Title,
                LPDesc: LP3_Desc,
                LPImage:LP3_ImgPath,
              ),
            ),

            LPCard("4","LifePath Number 4",LP4_Desc,LP4_ImgPath,
              LifePathInfoPage(
                LPAppBarTitle:"LifePath Number 4",
                LPTitle:LP4_Title,
                LPDesc: LP4_Desc,
                LPImage:LP4_ImgPath,
              ),
            ),

            LPCard("5","LifePath Number 5",LP5_Desc,LP5_ImgPath,
              LifePathInfoPage(
                LPAppBarTitle:"LifePath Number 5",
                LPTitle:LP5_Title,
                LPDesc: LP5_Desc,
                LPImage:LP5_ImgPath,
              ),
            ),

            LPCard("6","LifePath Number 6",LP6_Desc,LP6_ImgPath,
              LifePathInfoPage(
                LPAppBarTitle:"LifePath Number 6",
                LPTitle:LP6_Title,
                LPDesc: LP6_Desc,
                LPImage:LP6_ImgPath,
              ),
            ),

            LPCard("7","LifePath Number 7",LP7_Desc,LP7_ImgPath,
              LifePathInfoPage(
                LPAppBarTitle:"LifePath Number 7",
                LPTitle:LP7_Title,
                LPDesc: LP7_Desc,
                LPImage:LP7_ImgPath,
              ),
            ),

            LPCard("8","LifePath Number 8",LP8_Desc,LP8_ImgPath,
              LifePathInfoPage(
                LPAppBarTitle:"LifePath Number 8",
                LPTitle:LP8_Title,
                LPDesc: LP8_Desc,
                LPImage:LP8_ImgPath,
              ),
            ),

            LPCard("9","LifePath Number 9",LP9_Desc,LP9_ImgPath,
              LifePathInfoPage(
                LPAppBarTitle:"LifePath Number 9",
                LPTitle:LP9_Title,
                LPDesc: LP9_Desc,
                LPImage:LP9_ImgPath,
              ),
            ),

          ],
        )
      ),
    );
  }
}







class LifePathInfoPage extends StatefulWidget {
  String LPAppBarTitle,LPTitle,LPDesc,LPImage;

  LifePathInfoPage({
    @required this.LPAppBarTitle,
    @required this.LPTitle,
    @required this.LPDesc,
    @required this.LPImage,
  });

  @override
  LifePathInfoState createState() => LifePathInfoState();
}

class LifePathInfoState extends State<LifePathInfoPage> {

  @override
  initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text(this.widget.LPAppBarTitle),
      ),
      body:ListView(
        children: <Widget>[
          Image.asset(this.widget.LPImage),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              this.widget.LPTitle,
              style:TextStyle(
                fontWeight:FontWeight.bold,
                color:Colors.teal,
                fontFamily:"RaleWay",
                fontSize:18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              this.widget.LPDesc,
              textAlign:TextAlign.justify,
              style:TextStyle(
                fontWeight:FontWeight.bold,
                color:Colors.black,
                fontFamily:"RaleWay",
                fontSize:13,
              ),
            ),
          ),

        ],
      ),
    );
  }
}






