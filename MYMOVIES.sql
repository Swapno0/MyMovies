/*
 Navicat Premium Dump SQL

 Source Server         : MyMovies
 Source Server Type    : Oracle
 Source Server Version : 190000 (Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production)
 Source Host           : localhost:1521
 Source Schema         : MYMOVIES

 Target Server Type    : Oracle
 Target Server Version : 190000 (Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production)
 File Encoding         : 65001

 Date: 01/08/2025 14:49:40
*/


-- ----------------------------
-- Table structure for AWARD
-- ----------------------------
DROP TABLE "MYMOVIES"."AWARD";
CREATE TABLE "MYMOVIES"."AWARD" (
  "ID" NUMBER VISIBLE NOT NULL,
  "TITLE" VARCHAR2(15 BYTE) VISIBLE NOT NULL,
  "AWARDDESCRIPTION" VARCHAR2(30 BYTE) VISIBLE NOT NULL,
  "AWARDRECIEVER" VARCHAR2(10 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of AWARD
-- ----------------------------
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1001', 'Oscar', 'Best Picture', 'Movie');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1002', 'Oscar', 'Best Cinematography', 'Movie');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1003', 'Oscar', 'Best Sound', 'Movie');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1004', 'Oscar', 'Best Animated Picture', 'Movie');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1005', 'Oscar', 'Best Visual Effect', 'Movie');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1006', 'Golden Globe', 'Best Motion Picture', 'Movie');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1007', 'Golden Globe', 'Best Screenplay', 'Movie');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1008', 'Golden Globe', 'Best Score', 'Movie');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1009', 'Oscar', 'Best Actor', 'Actor');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1010', 'Oscar', 'Best Actress', 'Actor');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1011', 'Golden Globe', 'Best Actor', 'Actor');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1012', 'Golden Globe', 'Best Actress', 'Actor');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1013', 'BAFTA', 'Best Actor', 'Actor');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1014', 'BAFTA', 'Best Actress', 'Actor');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1015', 'Oscar', 'Best Director', 'Director');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1016', 'AACTA', 'Best Director', 'Director');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1017', 'BAFTA', 'Best Director', 'Director');
INSERT INTO "MYMOVIES"."AWARD" VALUES ('1019', 'Film Award', 'Best Director', 'Director');

-- ----------------------------
-- Table structure for CELEB
-- ----------------------------
DROP TABLE "MYMOVIES"."CELEB";
CREATE TABLE "MYMOVIES"."CELEB" (
  "ID" NUMBER VISIBLE NOT NULL,
  "NAME" VARCHAR2(30 BYTE) VISIBLE NOT NULL,
  "AVATAR" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "BIO" VARCHAR2(4000 BYTE) VISIBLE,
  "COUNTRY" VARCHAR2(25 BYTE) VISIBLE NOT NULL,
  "GENDER" VARCHAR2(10 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CELEB
-- ----------------------------
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100142', 'Julian Dennison', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749408788/esc2c0tuae51tdvx8xxp.webp', 'Julian Dennison is a film child actor from New Zealand, best known for his roles as Ricky Baker in Hunt for the Wilderpeople, the highest-grossing New Zealand film in history, and as Russell Collins a.k.a. "Firefist" in Deadpool 2.', 'New Zealand', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100121', 'Farhan Akhtar', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749054402/iaqrxfmb5mz0joxgwjt3.webp', 'Farhan Akhtar is an Indian film director, screenwriter, producer, actor, playback singer and television host. Born in Mumbai to screenwriters Javed Akhtar and Honey Irani, he grew up under the influence of the Hindi film industry. He began his career in Bollywood by working as an assistant director in Lamhe (1991) and Himalay Putra (1997).

Akhtar, after establishing a production company named Excel Entertainment along with Ritesh Sidhwani, made his directorial debut with Dil Chahta Hai (2001) and received critical acclaim for portraying modern youth. The film also won a National award. Following it, he made Lakshya (2004) and had his Hollywood debut through the soundtrack of Bride and Prejudice (2004), for which he wrote the lyrics. He went on to make the commercially successful Don (2006). He directed a short film titled Positive (2007), to spread awareness on HIV-AIDS.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100122', 'Gayatri Joshi', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749054982/hpyws8fovilro2jzw0xa.webp', 'Gayatri Joshi  (born March 20, 1977 in Mumbai, Maharashtra, India) is a model turned Bollywood actress. Her first film was 2004''s Swades.', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100123', 'Kishori Balal', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749055036/g8cgkqlirgz1wrpeubkv.webp', 'We don''t have a biography for Kishori Balal.', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100124', 'Rajesh Vivek', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749055081/jp7aoshmj7vstxexcvw7.webp', 'We don''t have a biography for Rajesh Vivek.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100061', 'Matt Damon', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748697959/fhr4st6beqxpnjlsd9or.webp', NULL, 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100143', 'Henry Cavill', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749408858/ht3oktexhcxw9uc4gf9a.webp', 'Henry William Dalgliesh Cavill (born May 5, 1983) is a British actor. He is known for his portrayal of Charles Brandon in Showtime''s The Tudors (2007–2010), DC Comics character Superman in the DC Extended Universe, Geralt of Rivia in the Netflix fantasy series The Witcher (2019–present), as well as Sherlock Holmes in the Netflix film Enola Holmes (2020).

Cavill began his career with roles in the feature adaptations of The Count of Monte Cristo (2002) and I Capture the Castle (2003). He later portrayed supporting roles in several television series, including BBC''s The Inspector Lynley Mysteries, ITV''s Midsomer Murders, and Showtime''s The Tudors. He has since appeared in numerous major studio films, such as Tristan & Isolde (2006), Stardust (2007), Blood Creek (2009), Immortals (2011), The Cold Light of Day (2012), Sand Castle (2017) and Night Hunter (2018). Cavill gained international recognition with his role as Superman in the DC Extended Universe superhero films Man of Steel (2013), Batman v Superman: Dawn of Justice (2016) and Justice League (2017). He also starred in the action spy films The Man from U.N.C.L.E. (2015) and Mission: Impossible – Fallout (2018).', 'England', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100125', 'Daya Shankar Pandey', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749055120/kd3ykaafulxhbywblr9i.webp', 'We don''t have a biography for Daya Shankar Pandey.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100126', 'Ashutosh Gowariker', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749055152/pnyskz9cdeqa2kowji0c.webp', 'Ashutosh Gowariker (born 15 February 1964) is an Indian film director, actor, writer and producer. He is known for directing large scale, opulent epic films as well as grounded, realistic dramas. His work includes the acclaimed films Lagaan (2001), Swades (2004) and Jodhaa Akbar (2008). Lagaan was nominated in the Best Foreign Language Film category in 74th Academy Awards. He has also been nominated for a European Film Award, and has won a number of other awards, including a National Film Award, five Filmfare Awards, and seven international film festival awards.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100141', 'Josh Brolin', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749408715/ol1cwww74q6vtvc0dlph.webp', 'Josh James Brolin (/ˈbroʊlɪn/; born February 12, 1968) is an American actor. A son of actor James Brolin, he gained fame in his youth for his role in the adventure film The Goonies (1985). After years of decline, Brolin had a resurgence with his starring role in the crime film No Country for Old Men (2007). Brolin received a nomination for the Academy Award for Best Supporting Actor for portraying Dan White in the biopic Milk (2008).

Brolin''s career progressed with roles in W. (2008), True Grit (2010), Wall Street: Money Never Sleeps (2010), Men in Black 3 (2012), Oldboy (2013), Inherent Vice (2014), Everest (2015), and Hail, Caesar! (2016). He gained wider recognition for playing Thanos in the Marvel Cinematic Universe (MCU), including in the films Avengers: Infinity War (2018) and Avengers: Endgame (2019), as well as Cable in Deadpool 2 (2018). Brolin also collaborated with filmmaker Denis Villeneuve in the action thriller Sicario (2015) and in the science fiction films Dune (2021) and Dune: Part Two (2024), in which he played Gurney Halleck.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100144', 'Francis Ford Coppola', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749409050/djos517gdqqcz3fpie4n.webp', 'Francis Ford Coppola (born April 7, 1939) is an American film director, producer and screenwriter. He is widely acclaimed as one of Hollywood''s most celebrated and influential film directors. He epitomized the group of filmmakers known as the New Hollywood, which included George Lucas, Martin Scorsese, Robert Altman, Woody Allen and William Friedkin, who emerged in the early 1970s with unconventional ideas that challenged contemporary filmmaking.

He co-authored the script for Patton, winning the Academy Award in 1970. His directorial fame escalated with the release of The Godfather in 1972. The film revolutionized movie-making in the gangster genre, garnering universal laurels from critics and public alike. It went on to win three Academy Awards, including his second, which he won for Best Adapted Screenplay, and it was instrumental in cementing his position as one of the prominent American film directors. Coppola followed it with an equally successful sequel The Godfather Part II, which became the first ever sequel to win the Academy Award for Best Picture. The film received yet higher praises than its predecessor, and gave him three Academy Awards—for Best Adapted Screenplay, Best Director and Best Picture. In the same year was released The Conversation, which he directed, produced and wrote. The film went on to win the Palme d''Or at the 1974 Cannes Film Festival. His next directorial venture was Apocalypse Now in 1979, and it was as notorious for its lengthy and troubled production as it was critically acclaimed for its vivid and stark depiction of the Vietnam War. It won his second Palme d''Or at the 1979 Cannes Film Festival.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100019', 'Aaron Eckhart', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748481579/irrx6mvl3uoosdgfptcs.webp', 'Aaron Edward Eckhart (born March 12, 1968) is an American actor. Born in Cupertino, California, Eckhart moved to the United Kingdom at early age, when his father relocated the family. Several years later, he began his acting career by performing in school plays, before moving to Australia for his high school senior year.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100020', 'Michael Caine', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748481632/fysfsumd4qnkamhqkf19.webp', 'Sir Michael Caine CBE (born Maurice Joseph Micklewhite Jr.) is a retired English actor. Known for his distinctive South London accent, he has appeared in more than 160 films in a career spanning seven decades, and is considered a British film icon. As of February 2017, the films in which Caine has appeared have grossed over $7.8 billion worldwide.', 'England', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100021', 'Maggie Gyllenhaal', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748481675/hvxachuzdvul1wplr0ph.webp', 'Margalit "Maggie" Ruth Gyllenhaal (born November 16, 1977) is an American actress and filmmaker. Part of the Gyllenhaal family, she is the daughter of filmmakers Stephen Gyllenhaal and Naomi Achs, and the older sister of actor Jake Gyllenhaal.', 'USA', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100023', 'Morgan Freeman', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748481794/yis3gwdejmhictnccmn5.webp', 'Morgan Freeman (born June 1, 1937) is an American actor, director, and narrator. Noted for his distinctive deep voice, Freeman is known for his various roles in a wide variety of film genres. Throughout his career spanning over five decades, he has received multiple accolades, including an Academy Award, a Screen Actors Guild Award, and a Golden Globe Award.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100024', 'Christopher Nolan', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748481901/i1uyrtsm5x8av6grgils.webp', 'Sir Christopher Edward Nolan, CBE (born July 30, 1970) is a British-American film director, screenwriter, and producer. He was born in Westminster, London, England.  He is known for writing and directing critically acclaimed films such as Memento (2000), The Prestige (2006), The Dark Knight Trilogy (2005-12), Inception (2010), Interstellar (2014) and Dunkirk (2017).', 'England', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100025', 'Gary Oldman', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748482435/kic1bbuau4roaogp3f3l.webp', 'Gary Leonard Oldman (born 21 March 1958) is an English actor and filmmaker. Regarded as one of the best actors of his generation, he is known for his versatility and intense acting style. He received various accolades, including an Academy Award, a Golden Globe Award, a Screen Actors Guild Award, and three British Academy Film Awards. His films have grossed over $11 billion worldwide, making him one of the highest-grossing actors to date.', 'England', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100145', 'Marlon Brando', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749409088/mqvzlhbikl9iiunwy5oi.webp', 'Marlon Brando Jr. (April 3, 1924 – July 1, 2004) was an American actor. Considered one of the most influential actors of the 20th century, he received numerous accolades throughout his career which spanned six decades, including two Academy Awards, two Golden Globe Awards, and three British Academy Film Awards. Brando was also an activist for many causes, notably the civil rights movement and various Native American movements. Having studied with Stella Adler in the 1940s, he is credited with being one of the first actors to bring the Stanislavski system of acting and method acting, derived from the Stanislavski system, to mainstream audiences.

He initially gained acclaim and his first Academy Award nomination for Best Actor in a Leading Role for reprising the role of Stanley Kowalski in the 1951 film adaptation of Tennessee Williams'' play A Streetcar Named Desire, a role that he originated successfully on Broadway. He received further praise, and a first Academy Award and Golden Globe Award, for his performance as Terry Malloy in On the Waterfront, and his portrayal of the rebellious motorcycle gang leader Johnny Strabler in The Wild One proved to be a lasting image in popular culture. Brando received Academy Award nominations for playing Emiliano Zapata in Viva Zapata! (1952); Mark Antony in Joseph L. Mankiewicz''s 1953 film adaptation of Shakespeare''s Julius Caesar; and Air Force Major Lloyd Gruver in Sayonara (1957), an adaptation of James A. Michener''s 1954 novel.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100146', 'Al Pacino', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749409126/yu2j6yz4d3ptuglcngft.webp', 'Alfredo James Pacino (born April 25, 1940) is an American actor and filmmaker. In a career spanning over five decades, he has received many awards and nominations, including an Academy Award, two Tony Awards, and two Primetime Emmy Awards. He is one of the few performers to have received the Triple Crown of Acting. He has also been honored with the AFI Life Achievement Award, the Cecil B. DeMille Award, and the National Medal of Arts.

A method actor and former student of the HB Studio and the Actors Studio, where he was taught by Charlie Laughton and Lee Strasberg, Pacino''s film debut came at the age of 29 with a minor role in Me, Natalie (1969). He gained favorable notice for his first lead role as a heroin addict in The Panic in Needle Park (1971). Wide acclaim and recognition came with his breakthrough role as Michael Corleone in Francis Ford Coppola''s The Godfather (1972), for which he received his first Oscar nomination, and he would reprise the role in the sequels The Godfather Part II (1974) and The Godfather Part III (1990).

His portrayal of Michael Corleone is regarded as one of the greatest in film history. Pacino received nominations for the Academy Award for Best Actor for Serpico (1973), The Godfather Part II, Dog Day Afternoon (1975), and ...And Justice for All (1979), ultimately winning it for playing a blind military veteran in Scent of a Woman (1992). For his performances in The Godfather, Dick Tracy (1990), Glengarry Glen Ross (1992), and The Irishman (2019), he earned Best Supporting Actor Oscar nominations.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100018', 'Heath Ledger', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748481494/nurc9lgt2wrqjjbntxv0.webp', 'When hunky, twenty-year-old heart-throb Heath Ledger first came to the attention of the public in 1999, it was all too easy to tag him as a "pretty boy" and an actor of little depth. He spent several years trying desperately to sway this image, but this was a double-edged sword.', 'Australia', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100082', 'Marion Cotillard', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749042111/musof6kzpr1liutnyjlk.webp', 'Marion Cotillard (born September 30, 1975) is a French actress, film producer, singer, songwriter, and environmentalist. Known for her roles in independent films and blockbusters, she has received various accolades, including an Academy Award, a British Academy Film Award, a Golden Globe Award, a European Film Award, a Lumières Award, and two César Awards. She became a Knight of the Order of Arts and Letters in France in 2010, and was promoted to Officer in 2016. She has served as a spokeswoman for Greenpeace since 2001. Cotillard was the face of the Lady Dior handbag for nine years. Since 2020, she is the face of Chanel''s fragrance Chanel No. 5.', 'France', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100083', 'Dev', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749042686/p1fdp0uo8b2kblrbwuc8.webp', 'Dev is an Indian film actor, producer, entertainer, singer and film writer, known for his works in Bengali cinema, and more recently, a politician. He owns the production house Dev Entertainment Ventures Pvt. Ltd.. He is also the Highest Paid Bengali Actor.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100084', 'Srabanti Chatterji', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749042739/onnneq4uz4inwwyya9ta.webp', 'Srabanti Chatterjee is an Indian actress who appears in Bengali language films. Srabanti primarily works in cinema of West Bengal, based in Kolkata. She gain popularity from Dujone (2009), Sedin Dekha Hoyechilo (2010) Movies. She has been married to Roshan Singh since April 19, 2019. She was previously married to Krishan Vraj and Rajib Biswas.', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100085', 'Tapas Paul', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749042776/gz74i3shycc6vb1nztjv.webp', 'Tapas Paul (29 September 1958 – 18 February 2020) was an Indian actor and politician. One of the most celebrated actors of Bengali cinema, Paul is best known for his on-screen romantic collaboration with Mahua Roy Choudhury and Debashree Roy. He received a Filmfare Award.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100086', 'Supriyo Dutta', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749042839/aixczae0kv5zohy7kyld.webp', 'Supriyo Dutta (born in 1960) is a Bengali language film and theatre actor from West Bengal. He is prominently known for his comic antagonistic roles in Kolkata Tollywood industry. He has started his career as a background artist in Indian Bengali film and established himself as an iconic personality.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100087', 'Ryan Reynolds', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749045009/o3yoi7xtp89fskcnqxbl.webp', 'Ryan Rodney Reynolds (born October 23, 1976) is a Canadian and American actor, producer, and businessman. He began his career starring in the Canadian teen soap opera Hillside (1991–1993) and had minor roles before landing the lead role on the sitcom Two Guys and a Girl between 1998 and 2001. Reynolds then starred in a range of films, including the comedies National Lampoon''s Van Wilder (2002), Waiting... (2005), and The Proposal (2009), and the superhero films Blade: Trinity (2004) and Green Lantern (2011).', 'Canada', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100088', 'Morena Baccarin', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749045053/fzbto7iqxm2xgvgl7ope.webp', 'Morena Baccarin (born June 2, 1979) is a Brazilian-born American actress most widely known for roles in several American science fiction television shows: as Inara Serra in the series Firefly; as Adria in the series Stargate SG-1; and as Anna in the 2009 version of the series V.', 'USA', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100089', 'Ed Skrein', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749045097/q2bu0df8d0zurd1sf0ze.webp', 'Edward George Skrein (born March 29, 1983) is an English actor, filmmaker, and rapper. Skrein made his acting debut in Plan B''s short film Michelle. He got his first lead role in Plan B''s Ill Manors. Skrein portrayed Daario Naharis in the third season of the television series Game of Thrones. However, in the fourth season of the series, he had been replaced by Dutch actor Michiel Huisman. Skrein states that "behind the scenes politics" had forced him to leave the show. In 2014, Skrein was cast in The Transporter: Refueled, replacing Jason Statham as the lead. Though the film was critically panned, his performance was praised. In 2016, Skrein played the lead villain, Ajax, in the blockbuster action film Deadpool.', 'England', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100090', 'Karan Soni', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749045205/okiypgeucfzcvtlveeke.webp', 'Karan Soni (born January 8, 1989) is an Indian-American actor and comedian. Often appearing in comedic roles, he came to prominence for playing Dopinder in the films Deadpool (2016) and its sequels Deadpool 2 (2018) and Deadpool & Wolverine (2024), and voicing Pavitr Prabhakar / Spider-Man India in Spider-Man: Across the Spider-Verse (2023).', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100091', 'Tim Miller', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749045385/ancmjw04vlvoyak2l5zm.webp', 'Timothy Miller (born October 10, 1964) is an American film director, producer, screenwriter, animator, and visual effects artist. He is best known for directing the films Deadpool (2016) and Terminator: Dark Fate (2019). He is also the creator of the animated anthology series Love, Death & Robots (2019–present), for which he has won three Primetime Emmy Awards for Outstanding Short Form Animated Program.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100092', 'Sujit Mondal', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749045589/psrkeiz0x11e2xpoxgbs.webp', NULL, 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100093', 'Jeet', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749049205/rovipuidvuh4zwlxhhfk.webp', 'Jeet (born Jeetendra Madnani on 11/30/1975) is an Indian film actor, film producer and television presenter who predominantly works in Bengali cinema. He started as a model and then shifted to TV serials such as Bishabriksha, Janani and Daughters of the Century. He made his cinematic debut in Chandu a Telugu film. Then in 2002 he made his Bengali debut with Sathi.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100094', 'Ashish Vidhyarthi', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749049254/qmabzkpryofmbu46mzw1.webp', 'Ashish Vidyarthi is an Indian film actor known for his works predominantly in Bollywood and Telugu cinema. He has won the National Film Award for Best Supporting Actor in 1995. He is noted for his antagonist characters.

', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100095', 'Koel Mallick', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749049291/lq9kzu47hmdsfzbuzbkx.webp', '
Koel Mallick is an Indian film actress who appears in Bengali. She is the daughter of actor Ranjit Mallick & Deepa Mallick.', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100081', 'Tom Hardy', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748974948/kftapfs6bxwgraeq1hah.webp', 'Edward Thomas Hardy CBE (born 15 September 1977) is an English actor, producer, writer and former model. After studying acting at the Drama Centre London, he made his film debut in Ridley Scott''s Black Hawk Down (2001). He has since been nominated for the Academy Award for Best Supporting Actor, two Critics'' Choice Movie Awards and two British Academy Film Awards, receiving the 2011 BAFTA Rising Star Award.', 'England', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100096', 'Kharaj Mukherjee', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749049356/wih5quvz7lcxpuryz8nf.webp', 'Kharaj Mukherjee or Kharaj Mukhopadhyay (born 7/7/1963) is an Indian actor, song writer, composer and singer. He made his debut in Bengali film with the film Hulusthul in 1980. In last 32 years he has worked in many films like Patalghar, Bye Bye Bangkok, Kahani, namesake, accident, Muktodhara, Special 26, Lafangey Parindey, Yuva, Parineeta, Laga Chunari mein daag, Chhaw-e chhuti, Jaatishwar etc. He is a student of the drama maestro Mr. Ramaprasad Banik. One of the finest actors in India, he is known for his excellence in both Commercial and natural acting. In 2012 film Kahaani, Mukherjee played the role of Inspector Chatterjee.Mukherjee won Bengal Film Journalists'' Association – Best Male Playback Award in 2004 for the film Patalghar.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100097', 'Tulika Basu', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749049397/hdrvj0upi3fiomrmizcv.webp', 'Making her debut in the film industry with a minor role in the 2007 family-drama, Krishnakanter Will, Tulika Basu is an Indian actress, known for her work in the Bengali film industry. She made her TV acting debut with the romantic series, Ogo Bodhu Sundari (2009-2011).', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100098', 'Raja Chanda', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749049585/pafadbl1mf5cbrgeqepx.webp', 'Raja Chanda (July 4, 1970) is an Indian film director who concentrates into Bengali language film and commercial ad films. He is one of the leading advertising film makers in Kolkata and has made 450+ ad films. His filmworks include Challenge 2, Le Halua Le, Rangbaaz, Magic, Beporowa, Kelor Kirti and Target: The Final Mission.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100099', 'Parambrata Chatterjee', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749050975/gmgch9qrrreuaaenhlyw.webp', 'Parambrata Chattopadhyay was born on June 27, 1980 in Calcutta, West Bengal, India. He is an actor and director, known for Kahaani (2012), Feluda (2017) and Bony (2020).', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100100', 'Dipankar Dey', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749051013/n9vesdzbgvypcttpit3a.webp', 'Deepankar De is an Indian actor in the Bengali film industry. He has worked in many movies as hero, villain and character artist. He starred in Satyajit Ray''s Jana Aranya, Ganashatru, Shakha Proshakha and Agantuk. He has acted in many art house and commercial films.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100101', 'Roopa Ganguly', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749051086/hvvbfomuu9tc0odqkfqm.webp', 'Roopa Ganguly (born 25 November 1966) is an Indian actress, playback singer and politician. She is best known for her rendition of Draupadi in B R Chopra''s hit television series Mahabharat (1988). Often promoted as the Bengali Film Industry''s answer to Bollywood''s Shabana Azmi, she is known for her versatility and accent adaptation. She worked with directors such as Mrinal Sen, Aparna Sen, Goutam Ghose and Rituparno Ghosh. She is a trained Rabindra Sangeet vocalist and a classical dancer. She received several awards including a National Award and two BFJA Awards. In October, 2015, she was nominated as a Member of Parliament, Rajya Sabha, by the President of India. She served as the President of BJP Mahila Morcha in West Bengal. She served as the General Secretary and the Vice President for the West Bengal Motion Picture Artistes'' Forum, a body representing cine artistes.', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100102', 'Sabyasachi Chakraborty', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749051122/a7j3hhzokdgtgfoqvyrr.webp', 'Sabyasachi Chakrabarty was born on September 8, 1956 in Calcutta, West Bengal, India. He is an actor, known for The Married Woman (2005), Dil Se.. (1998) and Written by? (2019). He is married to Mithu Chakraborty. They have two children.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100103', 'Srijit Mukherji', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749051170/gifc60i1xd71sgjnlbre.webp', 'Srijit Mukherji (born 23 September 1977) is an Indian film director and screenwriter who predominantly works in Bengali cinema.

His first feature film Autograph (2010), was a critical and commercial success. His fifth film, Jaatishwar, won four national awards at India''s 61st National Film Awards (2014). He won the National Film Award for Best Director and Best Original Screenplay for his sixth film, Chotushkone, at India''s 62nd National Film Awards. His eighth film, Rajkahini had been remade by him into a Hindi film titled, Begum Jaan, starring Vidya Balan in 2017. His 2018 release Ek Je Chhilo Raja won the ''Best Bengali Film'' Award at India''s National Film Awards. He plans to make a film with each of the English alphabets and already written films with 25 English alphabets as of 2025. The final alphabet would be Q.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100104', 'Yash', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749052431/t37jpgggkx7dral3cz8w.webp', 'Naveen Kumar Gowda known mononymously by his screen name Yash, is an Indian actor who works in Kannada films. Prior to films, he appeared in theater plays and television soaps.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100105', 'Srinidhi Shetty', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749052468/qgwprn8iewscwlbyninq.webp', 'Srinidhi Ramesh Shetty is an Indian model, engineer, actress and beauty pageant titleholder who was crowned as Miss Supranational India in Miss Diva 2016 pageant and later represented India at Miss Supranational 2016, which she won. She is the second Indian representative to win the title. She is also an actress in the Kannada cinema.', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100106', 'Ramachandra Raju', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749052506/tg6s62tjcjhsr9okrn2t.webp', 'Ramachandra Raju aka Garuda Rama is an Indian film actor who appears predominantly in South Indian Language films.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100107', 'Anant Nag', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749052562/xl8st3kxe1h7ymip2dme.webp', 'Anant Nag is an actor and politician from Karnataka, India. He is considered to be one of the all time greatest actors in the Kannada film industry with a vast number of commercially successful movies. As a result, he is popularly known as an actor with no-failures, by critics. In addition to Kannada movies, he has acted in Marathi, Tamil, Malayalam, Telugu and Hindi movies. He has also acted in Malgudi Days, directed by his younger brother Shankar Nag based on the stories by R.K.Narayan. His work was much appreciated by critics at that time. He is fluent in Kannada, Konkani, Marathi, Hindi and with a good understanding ofTamil, Telugu and Malayalam. The versatile natural acting coupled with the style of speaking (accent of southern kannada with a tint of coastal touch) made him one of the most successful actors in Kannada cinema.   ', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100109', 'Surender Reddy', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749053440/s2p53yl8kwq8o2milbe2.webp', 'We don''t have a biography for Surender Reddy.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100041', 'Swapno', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748523311/aliorgbvmleqoaxpnryk.jpg', 'I m gonna make it, dattebayo', 'Bangladesh', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100108', 'Prashanth Neel', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749052610/aixc0zbri5rzf8tc0pr7.webp', 'Prashanth Neel is an Indian film director who works in Kannada cinema. He made his debut with the 2014 film, Ugramm starring Sriimurali that emerged as a blockbuster and all-time box office hit, and followed it up with the Kannada magnum opus KGF, which he has written and directed.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100110', 'Allu Arjun', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749053476/nqxa9izjb41yezbcje6s.webp', 'Allu Arjun is an Indian film actor who primarily works in Telugu cinema. After playing as a child artist in Vijetha and as a dancer in Daddy, Arjun made his adult debut in Gangotri. Allu Arjun is the nephew of the famous Telugu actor Chiranjeevi. He is also the grandson of the Telugu comedy actor Allu Ramalingaiah. His cousin Ram Charan Teja is also a young and upcoming Tollywood actor. He has two siblings - an older brother named Allu Venkatesh, and a younger brother named Allu Sirish. He now lives in Hyderabad, Andhra Pradesh, with his family. He is a good dancer in Tollywood like his uncle.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100111', 'Shruti Haasan', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749053516/efgwdevobkfsoeawpowk.webp', 'Shruti Haasan is an Indian actress, singer and music composer who has worked in South Indian film industry and Bollywood. Her parents are noted actors, Kamal Haasan and Sarika. As a child artist, she sang in films and appeared in a guest role, before making her adult acting debut in the 2009 action drama, Luck. She later went on to win critical acclaim for her role in the Walt Disney fantasy film, Anaganaga O Dheerudu, Oh My Friend and 7aam Arivu. In 2012, she starred in Gabbar Singh, Telugu remake of Dabangg. She has also continued her stint in music through work as a singer in Indian languages, a career in music direction beginning with her father''s production Unnaipol Oruvan and her own music band and album', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100112', 'Shaam', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749053552/ueccqstwodheisz2ir5c.webp', 'Shamshuddin Ibrahim, known professionally as Shaam (born April 4, 1977), is a Tamil film actor and model. Starting his career as a professional model, he soon made his acting debut in the film Khushi (2000), appearing in a cameo role. He further appeared in lead roles in critically and commercially successful films such as 12B, Anbe Anbe, Iyarkai, Ullam Ketkumae and the Telugu film Kick. In 2006, he made his debut in Kannada film through Tananam Tananam with Ramya and Rakshita directed by Kavitha Lankesh.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100113', 'Ravi Kishan', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749053589/kyetigytoeescwdbl6xy.webp', 'Ravi Kishan (born July 17, 1969) is an Indian actor, politician, film producer, and television personality. He currently serves as a Member of Parliament, Lok Sabha from Gorakhpur. His film works are predominantly in Bhojpuri and Hindi cinema, as well as Telugu cinema. He has also appeared in a few Kannada and Tamil films.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100114', 'Prakash Raj', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749053630/fa07djkycjd1c8ngbjdf.webp', 'Prakash Raj is an Indian actor, film director, producer and television presenter who is known for his works in the South Indian film industry. Apart from his mother-tongue, Kannada, his fluency in Tamil, Telugu, Malayalam, Marathi, Hindi and English has placed him among the most sought after actors in Indian cinema. He has played a variety of roles, most notably as an antagonist and character actor. He won the National Film Award for Best Supporting Actor in 1998 for Mani Ratnam''s Iruvar and a National Film Award for Best Actor in 2009 for his role in Kanchivaram. As a producer, he won the National Film Award for Best Feature Film in Kannada for Puttakkana Highway.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100115', 'Brahmanandam', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749053668/xjwjcn8azxwot2iqyztl.webp', 'Kanneganti Brahmanandam, known mononymously as Brahmanandam, is an Indian actor, comedian, and director known for his works predominantly in Telugu cinema. He currently holds the Guinness World Record for the most screen credits for a living actor, appearing in over 1,000 films to date.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100116', 'Shah Rukh Khan', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749054196/pvzbmckwgdnbfy2lmuq5.webp', 'Shah Rukh Khan, often referred to as SRK or the "King of Bollywood," is one of India''s most iconic actors and producers. Born on November 2, 1965, in New Delhi, India, he began his career in television with shows like Fauji (1988) and Circus (1989). His film debut came in 1992 with Deewana, which marked the start of an illustrious career.

Shah Rukh Khan has appeared in over 80 films, earning widespread acclaim for his performances in movies such as Dilwale Dulhania Le Jayenge (1995), Kuch Kuch Hota Hai (1998), Chak De! India (2007), and My Name Is Khan (2010). He has won 14 Filmfare Awards, including eight for Best Actor, a record in Bollywood. In 2005, he was honored with the Padma Shri, India''s fourth-highest civilian award, for his contributions to Indian cinema.

Beyond acting, SRK is a successful entrepreneur, co-owning the Kolkata Knight Riders cricket team and founding the production company Red Chillies Entertainment. He is also known for his philanthropic work, particularly in child health and education. Shah Rukh Khan is married to Gauri Khan, and they have three children.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100117', 'Priyanka Chopra', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749054236/bbgw23pliowjee0laaks.webp', 'Priyanka Chopra Jonas (pronounced [pɾɪˈjəŋka ˈtʃoːpɽa]; née Chopra) is an Indian actress and producer. Chopra, the Miss World 2000 pageant winner, is one of India''s highest-paid actresses and has received numerous accolades, including two National Film Awards and five Filmfare Awards. In 2016, the Government of India honoured her with the Padma Shri, and Time named her one of the 100 most influential people in the world. In the next two years, Forbes listed her among the World''s 100 Most Powerful Women, and in 2022, she was named in the BBC 100 Women list.', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100118', 'Boman Irani', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749054288/dbl5qkgft186lkvf2y57.webp', 'Boman Irani (born 2 December 1959 in Mumbai, Maharashtra) is an Indian film and theatre actor and photographer. Irani began his acting career in theatre and moved to film in 2000 at the age of 44 with a role in Josh. Irani gained attention for his role in the 2003 comedy Munna Bhai M.B.B.S. He later appeared in Lage Raho Munna Bhai for which he received several IIFA award nominations and in 3 Idiots opposite Aamir Khan which earned him a Filmfare Award and a Star Screen Award for Best Actor in a Villainous Role. He is the host of Bollywood Ka Boss.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100162', 'Gwyneth Paltrow', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749410488/dkdiojm6mk3wwik6xuls.webp', 'Gwyneth Kate Paltrow (/ˈpæltroʊ/ PAL-troh; born September 27, 1972) is an American actress and businesswoman. The daughter of filmmaker Bruce Paltrow and actress Blythe Danner, she established herself as a leading lady, appearing in mainly mid-budget and period films during the 1990s and early 2000s, before transitioning to blockbusters and franchises. Her accolades include an Academy Award, a Golden Globe Award, and a Primetime Emmy Award.

Paltrow gained notice for her early work in films such as Seven (1995), Emma (1996), Sliding Doors (1998), and A Perfect Murder (1998). She garnered wider acclaim for her role as Viola de Lesseps in the historical romance Shakespeare in Love (1998), which earned her the Academy Award for Best Actress. This was followed by roles in The Talented Mr. Ripley (1999), The Royal Tenenbaums (2001), and Shallow Hal (2001). She made her West End debut in the David Auburn play Proof (2003), earning a Laurence Olivier Award for Best Actress nomination, and reprised the role in the 2005 film of the same name.', 'USA', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100163', 'John Cassini', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749410546/khdetl7g6xic5zr9qrlb.webp', 'John Cassini (born at Toronto) is a Canadian actor who played the role of Officer Davis in the 1995 Brad Pitt film, Se7en. He also starred in the 2005 film Cool Money. Cassini starred as Ronnie Delmarco on the CBC series, Intelligence. On March 7, 2008, the CBC announced that Intelligence would be cancelled. Cassini appeared in and is listed as a producer of the film "Guido Superstar: The Rise of Guido", starring, produced, and directed by Silvio Pollio, including, Nicholas Lea, Terry Chen, and Michael Eklund. The film screened at the 2010 Vancouver International Film Festival Thursday, Oct. 7 at 9:45 p.m. and Friday, Oct. 8, at 10:45 a.m., both at the Empire Granville 7 in downtown Vancouver, BC.  Cassini is an Italian citizen', 'Canada', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100164', 'Peter Jackson', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749410749/rdqr7qhy3oavsv6gzj0c.webp', 'Sir Peter Robert Jackson, (born 31 October 1961) is a New Zealand film director, producer, actor, and screenwriter, known for his Lord of the Rings film trilogy, adapted from the novel by J. R. R. Tolkien. He is also known for his 2005 remake of King Kong and as the producer of District 9. He won international attention early in his career with his "splatstick" horror comedies, before coming to mainstream prominence with Heavenly Creatures, for which he shared an Academy Award Best Screenplay nomination with his wife, Fran Walsh. Jackson has been awarded three Academy Awards in his career, including the award for Best Director in 2003.', 'New Zealand', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100165', 'Elijah Wood', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749410808/hnccqlavifjrknpmkuva.webp', 'Elijah Jordan Wood (born January 28, 1981) is an American actor and producer. He rose to international fame for his portrayal of Frodo Baggins in The Lord of the Rings film trilogy (2001–2003) and The Hobbit: An Unexpected Journey (2012).

Wood made his film debut with a small part in Back to the Future Part II (1989). He went on to achieve recognition as a child actor with multiple roles such as Avalon (1990) and The Good Son (1993). As a teenager, he starred in several films including North (1994), Flipper (1996), and The Ice Storm (1997). Following the success of The Lord of the Rings, Wood has appeared in a wide range of films, including Eternal Sunshine of the Spotless Mind (2004), Paris, je t''aime (2006), and I Don''t Feel at Home in This World Anymore (2017).', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100166', 'Ian McKellen', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749410853/cvmtnprzwt3iewsclxdu.webp', 'Sir Ian Murray McKellen (born 25 May 1939) is an English actor. He has played roles on the screen and stage in genres ranging from Shakespearean dramas and modern theatre to popular fantasy and science fiction. He is regarded as a British cultural icon and was knighted by Queen Elizabeth II in 1991. He has received numerous accolades, including a Tony Award, six Olivier Awards, and a Golden Globe Award, as well as nominations for two Academy Awards, five BAFTA Awards and five Emmy Awards.

McKellen made his stage debut in 1961 at the Belgrade Theatre as a member of its repertory company, and in 1965 made his first West End appearance. In 1969, he was invited to join the Prospect Theatre Company to play the lead parts in Shakespeare''s Richard II and Marlowe''s Edward II. In the 1970s, McKellen became a stalwart of the Royal Shakespeare Company and the National Theatre of Great Britain. He has earned five Olivier Awards for his roles in Pillars of the Community (1977), The Alchemist (1978), Bent (1979), Wild Honey (1984), and Richard III (1995). McKellen made his Broadway debut in The Promise (1965). He received the Tony Award for Best Actor in a Play for his role as Antonio Salieri in Amadeus (1980). He was further nominated for Ian McKellen: Acting Shakespeare (1984). He returned to Broadway in Wild Honey(1986), Dance of Death (1990), No Man''s Land (2013), and Waiting for Godot (2013), the latter two being a joint production with Patrick Stewart.', 'England', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100167', 'Viggo Mortensen', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749410895/ltqkyxrfu8ltlfvi4zzw.webp', 'Viggo Peter Mortensen, Jr. (born October 20, 1958) is an American actor, writer, director, producer, musician, and multimedia artist. Born and raised in the state of New York to a Danish father and American mother, he also lived in Argentina during his childhood. He is the recipient of various accolades including a Screen Actors Guild Award and has been nominated for three Academy Awards, three BAFTA Awards, and four Golden Globe Awards.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100168', 'Sean Astin', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749410942/uhf4htkiuq4rrprn8rad.webp', 'Sean Astin (born February 25, 1971) is an American film actor, director, and producer better known for his film roles as Mikey Walsh in The Goonies, the title character of Rudy, and Samwise Gamgee in the Lord of the Rings trilogy. In television, he appeared as Lynn McGill in the fifth season of 24. He also provided the voice for the title character in Disney''s Special Agent Oso.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100169', 'Andy Serkis', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749410985/kljxucwtwzbyq6eylcsv.webp', 'Andrew Clement Serkis (born 20 April 1964) is an English actor and filmmaker. He is best known for his motion capture roles comprising motion capture acting, animation and voice work for computer-generated characters such as Gollum in The Lord of the Rings film trilogy (2001–2003) and The Hobbit: An Unexpected Journey (2012), King Kong in the eponymous 2005 film, Caesar in the Planet of the Apes reboot series (2011–2017), Captain Haddock / Sir Francis Haddock in Steven Spielberg''s The Adventures of Tintin (2011), Baloo in his self-directed film Mowgli: Legend of the Jungle (2018) and Supreme Leader Snoke in the Star Wars sequel trilogy films The Force Awakens (2015) and The Last Jedi (2017), also portraying Kino Loy in the Star Wars Disney+ series Andor (2022).', 'England', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100179', 'Ken Watanabe', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749411825/s7ensnetzew9ksgrg7sr.webp', 'Ken Watanabe (born October 21, 1959) is a Japanese stage, film, and television actor. To English-speaking audiences he is known for playing tragic hero characters, such as General Tadamichi Kuribayashi in Letters from Iwo Jima and Lord Katsumoto Moritsugu in The Last Samurai, for which he was nominated for the Academy Award for Best Supporting Actor. Among other awards, he has won the Japan Academy Prize for Best Actor twice, in 2007 for Memories of Tomorrow and in 2010 for Shizumanu Taiyō. He is also known for his roles in director Christopher Nolan''s Hollywood blockbusters Batman Begins and Inception.', 'Japan', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100180', 'Lilly Wachowski', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749411994/gqskhxifplf5zbjfmzde.webp', 'Lilly Wachowski (born December 29, 1967) is known as one of the Wachowski sisters — a directing, writing and producing duo most famous for creating The Matrix series and V for Vendetta.

', 'USA', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100181', 'Keanu Reeves', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412038/o72pkbl1vkecn1twezik.webp', 'Keanu Charles Reeves is a Canadian actor. Reeves is known for his roles in Bill & Ted''s Excellent Adventure, Speed, Point Break, and The Matrix franchise as Neo.

He has collaborated with major directors such as Stephen Frears (in the 1988 period drama Dangerous Liaisons); Gus Van Sant (in the 1991 independent film My Own Private Idaho); and Bernardo Bertolucci (in the 1993 film Little Buddha). Referring to his 1991 film releases, The New York Times'' critic, Janet Maslin, praised Reeves'' versatility, saying that he "displays considerable discipline and range. He moves easily between the buttoned-down demeanor that suits a police procedural story and the loose-jointed manner of his comic roles." A repeated theme in roles he has portrayed is that of saving the world, including the characters of Ted Logan, Buddha, Neo, Johnny Mnemonic, John Constantine and Klaatu.', 'Canada', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100182', 'Laurence Fishburne', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412078/vtekp7qmnu7plppl2egg.webp', 'Laurence John Fishburne III (born July 30, 1961; usually credited as Larry Fishburne until 1993) is an American actor. He is a three-time Emmy Award and Tony Award winner known for his roles on stage and screen. He has been hailed for his forceful, militant, and authoritative characters in his films. He is known for playing Morpheus in The Matrix series (1999–2003), Jason "Furious" Styles in the John Singleton drama film Boyz n the Hood (1991), Tyrone "Mr. Clean" Miller in Francis Ford Coppola''s war film Apocalypse Now (1979), and "The Bowery King" in the John Wick film series (2017–present).

For his portrayal of Ike Turner in What''s Love Got to Do with It (1993), Fishburne was nominated for an Academy Award for Best Actor. He won a Tony Award for Best Featured Actor in a Play for his performance in Two Trains Running (1992) and an Emmy Award for Outstanding Guest Actor in a Drama Series for his performance in TriBeCa (1993). Fishburne became the first African American to portray Othello on film when he appeared in Oliver Parker''s 1995 film adaptation of the Shakespeare play. He has also received five Screen Actors Guild Award nominations. He received an Independent Spirit Award for Best Male Lead nomination for his performance in Deep Cover (1992).', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100183', 'Carrie-Anne Moss', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412115/ohsa0mtv3ughlazeiawe.webp', 'Carrie-Anne Moss (born August 21, 1967) is a Canadian actress. After early roles on television, she rose to international prominence for her role of Trinity in The Matrix franchise. She has starred in Memento (2000) for which she won the Independent Spirit Award for Best Supporting Female, Red Planet (2000), Chocolat (2000), Fido (2006), Snow Cake (2006) for which she won the Genie Award for Best Performance by an Actress in a Supporting Role, Disturbia (2007), Unthinkable (2010), Silent Hill: Revelation (2012), and Pompeii (2014). She also portrayed Jeri Hogarth in several television series produced by Marvel Television for Netflix, most notably Jessica Jones (2015–2019).', 'Canada', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100184', 'Hugo Weaving', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412166/jb3e2wnrqejlk7ytetmm.webp', 'Hugo Wallace Weaving AO (born 4 April 1960) is an English actor. Born in Colonial Nigeria to English parents, he has resided in Australia for the entirety of his career. He is the recipient of six Australian Academy of Cinema and Television Arts Awards (AACTA) and has also been recognised as an Honorary Officer of the Order of Australia.

Weaving landed his first major role as English cricket captain Douglas Jardine on the Australian television series Bodyline (1984). Continuing to act in Australia, he rose to prominence with his appearances in the films Proof (1991) and The Adventures of Priscilla, Queen of the Desert (1994), winning his first AACTA Award for Best Actor in a Leading Role with the former. By the turn of the millennium, Weaving achieved international recognition through appearances in mainstream American productions. His most notable film roles include Agent Smith in the first three The Matrix films (1999–2003), Elrond in The Lord of the Rings (2001–2003) and The Hobbit (2012–2014) trilogies, the title character in V for Vendetta (2005), and Johann Schmidt / Red Skull in the Marvel Cinematic Universe (MCU) film Captain America: The First Avenger (2011).', 'England', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100185', 'Gloria Foster', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412205/lu6cdqbffuqsjvfoui1e.webp', 'Gloria Foster (November 15, 1933 – September 29, 2001) was an American actress, most known for her stage performances both on and off Broadway, including her acclaimed roles in plays In White America and Having Our Say, winning three Obie Awards during her career.

In films, she was perhaps best known as the Oracle in The Matrix (1999) and The Matrix Reloaded (2003), the latter film being her last. Gloria Foster also played the role of the mother of Yusef Bell in the mini series The Atlanta Child Murders which aired in 1985', 'USA', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100186', 'Rajkumar Hirani', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412389/ihiogr2nfvbptbodvnym.webp', 'Rajkumar Hirani (born 1962) is a National Award and Filmfare Award winning Indian Director, screenwriter and film editor of Hindi films, best known for the films Munna Bhai MBBS (2003), Lage Raho Munnabhai (2006) and 3 Idiots (2009), considered the highest-grossing hit Hindi film by distributor-share', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100187', 'Aamir Khan', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412427/m4bvwqyatnrse9mqrlkl.webp', 'Aamir Khan is an Indian actor, director, producer, filmmaker and television talk-show host who has established himself as one of the most popular and influential actors of Indian cinema. Starting his career as a child actor in his uncle Nasir Hussain''s film Yaadon Ki Baaraat (1973), Khan began his professional career eleven years later with Holi (1984) and had his first commercial success with Qayamat Se Qayamat Tak (1988). He received his first National Film Award (Special Jury Award) for his role in the film Raakh (1989). After seven previous nominations during the 1980s and 1990s, Khan received his first Filmfare Award for Best Actor for his performance in the major grosser Raja Hindustani (1996)  and later earned his second Best Actor award for his performance in the Academy Award-nominated Lagaan, which also marked the debut of his own production company.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100188', 'R. Madhavan', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412466/aphnsmncqnuwmwiuzh1w.webp', 'Madhavan is an Indian actor, writer and film producer. Madhavan has received two Filmfare Awards, an award from the Tamil Nadu State Film Awards alongside recognition and nominations from other organisations. He has been described as one of the few actors in India who is able to achieve pan-Indian appeal, appearing in films from seven different languages.

Madhavan began his acting career with television guest appearances, including a role on the Zee TV prime-time soap opera Banegi Apni Baat in 1996. After appearing in commercials and in small roles, he later gained recognition in the Tamil film industry through Mani Ratnam''s successful romance film Alaipayuthey (2000).', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100189', 'Sharman Joshi', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412501/biy9mymtzb2va5ni8lym.webp', 'Sharman Joshi is an Indian stage and film actor.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100190', 'Kareena Kapoor Khan', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412537/qk64rhxor7cacd1hnga7.webp', 'Kareena Kapoor Khan (born September 21, 1980) is an Indian film actress who appears in Bollywood films. Born into a film family where both her parents, Randhir Kapoor and Babita, and her elder sister Karisma were in the film industry, Kapoor faced the media spotlight from a very young age. However, she did not make her acting debut until the 2000 film Refugee, which earned her the Filmfare Best Female Debut Award. Her melodrama Kabhi Khushi Kabhie Gham became India''s highest grossing film in the overseas market in 2001 and is her biggest commercial success to date.

After receiving negative reviews for a series of repetitive roles between 2002 and 2003, Kapoor accepted more demanding parts in order to avoid being typecast. Consequently, from 2004 to 2006 she was recognized by critics for displaying greater versatility. Her portrayal of a sex worker in Chameli (2004) proved to be the turning point in her career and garnered her the Filmfare Special Performance Award. She later received two Critics Awards for Best Actress at the Filmfare ceremony for her performances in the critically acclaimed Dev (2004) and Omkara (2006).', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100191', 'Omi Vaidya', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412582/bxxbpheeiglf0vkck9sr.webp', 'Omi Vaidya (born January 10, 1982) is an American actor of Indian descent. He works in both American and Indian films and shows. His performance as Chatur in 3 Idiots (2009) is what he is known best for. He auditioned for the role while on a trip to Mumbai without knowing much Hindi, and got casted.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100192', 'Kabir Khan', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412755/vjjnbcwzs0edernak1gr.webp', 'We don''t have a biography for Kabir Khan.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100193', 'Salman Khan', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412806/h7hngfkutbgembsntpty.webp', 'Salman Khan ( born Abdul Rashid Salim Salman Khan on 27 December 1965)  is an Indian film actor. He has starred in more than eighty Hindi films.

Khan, who made his acting debut with a minor role in the drama Biwi Ho To Aisi (1988), had his first commercial success with the blockbuster Maine Pyar Kiya (1989), for which he won a Filmfare Award for Best Male Debut. He went on to star in some of Hindi cinema''s most successful films of those times, such as Saajan (1991), Hum Aapke Hain Kaun (1994), Karan Arjun (1995), Judwaa (1997), Pyar Kiya To Darna Kya (1998) and Biwi No.1 (1999), having appeared in the highest earning films of seven separate years during his career. He is the only Indian actor to have 4 all-time blockbusters in his filmography, more than any other Indian actor in history, which was confirmed by a list of all-time blockbusters published by Box Office India. In 1999, Khan won a Filmfare Award for Best Supporting Actor for his extended appearance in Kuch Kuch Hota Hai (1998), and since then has starred in several critical and commercial successes, including Hum Dil De Chuke Sanam (1999), Tere Naam (2003), Mujhse Shaadi Karogi (2004), No Entry (2005), Partner (2007), Wanted (2009) and Dabangg (2010), which has become the second highest-grossing Bollywood film of all-time. Khan has thus established himself as one of the most prominent, leading, and successful actors of Hindi cinema.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100194', 'Harshaali Malthotra', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412855/a4jrswqdsxvzgeppptfu.webp', 'Harshaali Malhotra (Hindi: हर्षाली मल्होत्रा; born June 3, 2008) is an Indian child actress. She made her film debut with a leading in Kabir Khan''s 2015 drama film Bajrangi Bhaijaan, opposite Salman Khan, Kareena Kapoorand Nawazuddin Siddiqui. She played the role of Shahida (Munni), a Pakistani Muslim girl who gets lost in India and travels back to her homeland with the help of an Indian, Pavan Kumar Chaturvedi (played by Salman Khan). Harshaali Malhotra (Shahida) was selected out of 5,000 girls who appeared for the film''s audition. The film was released on Eid ul Fitr, and became the second highest-grossing Bollywood films. Malhotra was critically praised for her performance; and her innocence was acclaimed by the audience. In this movie, she did not utter a single word, playing the role of a mute girl, but she still managed to win everyone''s hearts with her expressions and gestures. Bajrangi Bhaijaan''s success and the audience''s positive reception is said to revolve around Harshaali''s performance in the film. She has acted in serials such as Qubool Hai (2014) and Laut Aao Trisha (2014), and appeared in TV commercials and print ads for brands including Fair & Lovely (cosmetics), Pears (cosmetic), HDFC Bank and Horlicks She won BIG Star Entertainment Awards in "Most Entertaining Child Artist" category for her role in Bajrangi Bhaijaan', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100195', 'Nawazuddin Siddiqui', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412885/rqtyugk0jzulktmbkonx.webp', 'Nawazuddin Siddiqui is an Indian film actor who works in Hindi cinema. After a period of unnoticed performances in his early career, he received the Special Jury Award at the 2012 National Film Awards and Filmfare Award for Best Supporting Actor in 2013.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100196', 'Sharat Saxena', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412923/bbpmo7zxqs7sc0zkojrr.webp', 'We don''t have a biography for Sharat Saxena.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100197', 'Meher Vij', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749412970/fp64p14djuufdxvnsaxi.webp', 'Meher Vij (born Vaishali Sahdev, 22 September 1986) is an Indian film and television actress, who has mainly played cameos and supporting roles. She has worked in films such as Lucky: No Time for Love (2005), Dil Vil Pyaar Vyaar (2014) and Bajrangi Bhaijaan (2015), She also has popular television shows like Kis Desh Mein Hai Meraa Dil and Ram Milaayi Jodi to her credit. Meher was born in 1986 in Delhi as Vaishali sahdev . Meher has a elder brother Piyush Sahdev Meher married Manav Vij on 5 July 2009 in Mumbai. She changed her name from Vaishali Sahdev to Meher in 2009, after marrying Manav Vij.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100198', 'Anurag Basu', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749413085/wa0qrwjwwubfxtdrocep.webp', 'Anurag Basu is an India television-advertiser, reality show-judge, director, actor, screenwriter and producer. Basu achieved initial success with his films tackling the themes of passion and adultery[ such as Life in a... Metro, Kites, Gangster and Murder.

He began his directing career in television, moving to feature films in 2002.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100199', 'Ranbir Kapoor', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749413120/tlogzhlumiohrlzqplli.webp', 'Ranbir Kapoor is an Indian actor who appears in Bollywood movies. He first appeared in the 2007 film Saawariya for which he won a Filmfare Best Male Debut Award.

Born to actors Rishi Kapoor and Neetu Singh, Kapoor is the great grandson of Prithviraj Kapoor and the grandson of actor and filmmaker Raj Kapoor. He is the brother of Riddhima Kapoor and his uncles are Randhir Kapoor and Rajiv Kapoor. Other notable family members include his cousins Karisma Kapoor, Kareena Kapoor and Nikhil Nanda. As a child, Kapoor studied at Bombay Scottish School in Mahim, Mumbai, and went on to pursue method acting at The Lee Strasberg Theatre and Film Institute in New York.

Kapoor currently lives with his parents in Pali Hill in Mumbai, Maharashtra. He announced that he was dating Bollywood actress Deepika Padukone in an interview in February 2008. The couple later broke up in October 2009.

', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100200', 'Ileana DCruz', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749413251/bss0ilrj4a7jbzre29yn.webp', 'Ileana D''Cruz is an Indian film actress, who predominantly appears in South Indian cinema and Bollywood.

She won the Filmfare Award for Best Female Debut – South for the 2006 Telugu film Devadasu. In 2012, she made her Bollywood debut with Anurag Basu''s critically and commercially successful Barfi!, for which she received critical appreciation and the Filmfare Award for Best Female Debut.

D''Cruz was born to a Goan Catholic family in Mumbai, and raised partly in Mumbai and partly in Goa. Her family relocated to Parra, Goa when she was 10 years old. Her mother tongue is Konkani.', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100201', 'Jisshu Sengupta', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749413287/hqrlysitqbhbbfnwznmq.webp', 'Jisshu Sengupta, popularly known as Jisshu, is a film actor, producer and television presenter, who works predominantly in Bengali and Hindi films.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100202', 'Matthew McConaughey', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749447860/xpgsd5tm2ecn7eowjcbb.webp', 'Matthew David McConaughey (born November 4, 1969) is an American actor. He first gained notice for his supporting performance in the coming-of-age comedy Dazed and Confused (1993), which was considered by many to be his breakout role. After a number of supporting roles in films including Angels in the Outfield (1994) and Texas Chainsaw Massacre: The Next Generation (1994), his breakthrough performance as a leading man came in the legal drama A Time to Kill (1996). He followed this with leading performances in the science fiction film Contact (1997), the historical drama Amistad (1997), the comedy-drama The Newton Boys (1998), the satire EDtv (1999), the war film U-571 (2000), and the psychological thriller Frailty (2001).', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100203', 'Tota Roy Chowdhury', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749452735/tsrcgz9acnf1as9klm4y.webp', 'Tota Roy Chowdhury was born on July 9, 1976 in Calcutta, West Bengal, India as Pushparag Roy Choudhury. He is an actor and director, known for Kaththi (2014), Kahaani 2 (2016) and Choker Bali: A Passion Play (2003).', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100204', 'Sumit Ganguly', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749452921/dxd7bb0dckbqyf28hk4h.webp', 'We don''t have a biography for Sumit Ganguly.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100205', 'Rittika Sen', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749452972/tnuazcwxomca4py1vk2b.webp', 'We don''t have a biography for Rittika Sen.', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100170', 'Dominic Monaghan', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749411023/gqunw2a4cxa1vulxxs7x.webp', 'Dominic Monaghan (born December 8, 1976) is an English actor. He has received international attention from playing Merry in Peter Jackson''s adaptation of J. R. R. Tolkien''s The Lord of the Rings and for his role as Charlie Pace on the television show Lost.', 'England', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100171', 'Billy Boyd', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749411068/dwdfuhekljzd4om5pmab.webp', 'Billy Boyd (born 28 August 1968) is a Scottish actor and musician most widely known for playing the character Peregrin "Pippin" Took in the film adaptations of The Lord of the Rings and Barret Bonden in Master and Commander: The Far Side of the World.', 'Scotland', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100172', 'Aditya Chopra', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749411460/zwjf5odtwh4uwcq2wdlp.webp', 'Aditya Chopra is an Indian filmmaker. His work as a director includes Dilwale Dulhania Le Jayenge (1995), Mohabbatein (2000), Rab Ne Bana Di Jodi (2008) and Befikre (2016).', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100173', 'Kajol', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749411509/qc24a0ty4dvmzn3n2rft.webp', 'Kajol (born Kajol Mukherjee, 5 August 1974), also known by her married name Kajol Devgan, is an Indian film actress, who predominantly works in Hindi cinema. Born in Mumbai to the Mukherjee-Samarth family, she is the daughter of actress Tanuja Samarth and late filmmaker Shomu Mukherjee. Regarded as one of India''s most successful and highest-paid actresses, Kajol is the recipient of numerous accolades, including six Filmfare Awards, among twelve nominations. Along with her late aunt Nutan, she holds the record for most Best Actress wins at Filmfare, with five. In 2011, the Government of India awarded her with the Padma Shri, the fourth highest civilian honour of the country.', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100174', 'Amrish Puri', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749411544/ojktu4yatzsi5ijjlciq.webp', 'Amrish Lal Puri (June 22, 1932 - January 12, 2005) was an iconic theater and film actor from India, who was a key player in the Indian theater movement that picked up steam in the 1960s. He worked with notable playwrights of the time, such as Satyadev Dubey and Girish Karnad. However, he is primarily remembered for essaying some iconic negative roles in Hindi cinema. He is most remembered for his role as Mogambo in the Hindi film Mr India (1987). As Mola Ram in the Hollywood film Indiana Jones and the Temple of Doom (1984), he crossed over to international cinema as well.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100175', 'Farida Jalal', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749411583/ws0s0cqoqhgu1mvjgcqw.webp', 'Farida Jalal (née Sami; born March 14, 1949) is an Indian actress active in Hindi cinema and television. In a career spanning nearly half a century, she has acted in over 200 films, and has received accolades such as four Filmfare Awards, two Bengal Film Journalists Association Awards, a Filmfare Critics Award for Best Performance, and the Best Actress Award at the 2012 Harlem International Film Festival.

Jalal started her career in film as a teenager and went on to play leading and supporting roles in numerous motion pictures through the 1970s and early 80s. Later, she established herself as a household name for portraying motherly roles in the 1990s and the early 2000s. Since then, she successfully transitioned to television and appeared in numerous shows, including sitcoms, soap operas, and Netflix originals.', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100176', 'Anupam Kher', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749411616/e9eu0118ka7jighxb9br.webp', 'Anupam Kher (born March 7, 1955) is an Indian actor, director and producer who works primarily in Hindi-language films. He has appeared in nearly 400 films and 100 plays. He has played a variety of characters including numerous critically acclaimed leading or parallel roles. The Government of India honoured him with the Padma Shri in 2004 and the Padma Bhushan in 2016 for his contribution in the field of Indian cinema and arts. Kher is known internationally for Bend It Like Beckham (2002), Bride and Prejudice (2004) and The Mistress of Spices (2005). In 2012, he co-starred in the Academy Award-winning Silver Linings Playbook.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100177', 'Leonardo DiCaprio', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749411742/ins2044q4jtcl0g1woas.webp', 'Leonardo Wilhelm DiCaprio (born November 11, 1974) is an American actor and film producer. Known for his work in biopics and period films, DiCaprio is the recipient of numerous accolades, including an Academy Award, a British Academy Film Award, and three Golden Globe Awards. As of 2019, his films have grossed over $7.2 billion worldwide, and he has been placed eight times in annual rankings of the world''s highest-paid actors.

Born in Los Angeles, DiCaprio began his career in the late 1980s by appearing in television commercials. In the early 1990s, he had recurring roles in various television shows, such as the sitcom Parenthood, and had his first major film part as author Tobias Wolff in This Boy''s Life (1993). At age 19, he received critical acclaim and his first Academy Award and Golden Globe Award nominations for his performance as a developmentally disabled boy in What''s Eating Gilbert Grape (1993). He achieved international stardom with the star-crossed romances Romeo + Juliet (1996) and Titanic (1997).', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100178', 'Joseph Gordon-Levitt', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749411782/bfltdictajomqebof0fv.webp', 'Joseph Leonard Gordon-Levitt (born February 17, 1981) is an American actor and filmmaker. He has received various accolades, including nominations for the Golden Globe Award for Best Actor – Motion Picture Musical or Comedy for his leading performances in 500 Days of Summer (2009) and 50/50 (2011). He is the founder of the online media platform HitRecord whose projects such as HitRecord on TV (2014–15) and Create Together (2020) won him two Primetime Emmy Awards in the category of Outstanding Interactive Program.

Born in Los Angeles to a Jewish family, Gordon-Levitt began his acting career as a child, appearing in the films A River Runs Through It (1992), Holy Matrimony (1994), and Angels in the Outfield (1994), which earned him a Young Artist Award and a Saturn Award nomination. He played the role of Tommy Solomon in the TV series 3rd Rock from the Sun (1996–2001) for which he received three nominations at the Screen Actors Guild Awards. He had a supporting role in 10 Things I Hate About You (1999) and voiced Jim Hawkins in the Disney animated Treasure Planet (2002) before taking a break from acting to study at Columbia University, but dropped out in 2004 to resume his acting career.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100147', 'James Caan', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749409182/hizqxuthp5m8jqjz0jfq.webp', 'James Edmund Caan (/kɑːn/ KAHN; March 26, 1940 – July 6, 2022) was an American actor who was nominated for several awards, including four Golden Globes, an Emmy, and an Oscar. Caan was awarded a motion pictures star on the Hollywood Walk of Fame in 1978.

After early roles in Howard Hawks''s El Dorado (1966), Robert Altman''s Countdown (1967) and Francis Ford Coppola''s The Rain People (1969), he came to prominence for playing his signature role of Sonny Corleone in The Godfather (1972), for which he was nominated for the Academy Award for Best Supporting Actor and the Golden Globe for Best Supporting Actor. He reprised the role of Sonny Corleone in The Godfather Part II (1974) with a cameo appearance at the end.

Caan had significant roles in films such as Brian''s Song (1971), Cinderella Liberty (1973), The Gambler (1974), Rollerball (1975), A Bridge Too Far (1977), and Alan J. Pakula''s Comes a Horseman (1978). He had sporadically worked in film since the 1980s, with his notable performances including roles in Thief (1981), Gardens of Stone (1987), Misery (1990), Dick Tracy (1990), Bottle Rocket (1996), The Yards (2000), Dogville (2003), and Elf (2003).', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100148', 'Robert Duvall', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749409225/o6v0ttqkgdlgvbixwchm.webp', 'Robert Selden Duvall (born January 5, 1931) is an American actor and filmmaker. He is the recipient of an Academy Award, four Golden Globe Awards, a BAFTA Award, two Primetime Emmy Awards and a Screen Actors Guild Award.

Duvall began appearing in theater in the late 1950s, moving into television and film roles during the early 1960s, playing Boo Radley in To Kill a Mockingbird (1962) and appearing in Captain Newman, M.D. (1963), as Major Frank Burns in the blockbuster comedy MAS*H (1970) and the lead role in THX 1138 (1971), as well as Horton Foote''s adaptation of William Faulkner''s Tomorrow (1972), which was developed at The Actors Studio and is his personal favorite. This was followed by a series of critically lauded performances in commercially successful films.

He has starred in numerous films and television series, including The Twilight Zone (1963), The Outer Limits (1964), The F.B.I. (1966), Bullitt (1968), True Grit (1969), Joe Kidd (1972), The Godfather (1972), The Godfather Part II (1974), The Conversation (1974), Network (1976), Apocalypse Now (1979), The Great Santini (1979), Tender Mercies (1983) (which earned him the Academy Award for Best Actor), The Natural (1984), Colors (1988), Lonesome Dove (1989), The Handmaid''s Tale (1990), Days of Thunder (1990), Rambling Rose (1991), Falling Down (1993), Secondhand Lions (2003), The Judge (2014), and Widows (2018).', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100149', 'Diane Keaton', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749409273/myxo4evvbrqnjyaqc6l9.webp', 'Diane Hall Keaton (born Diane Hall; January 5, 1946) is an American actress. Known for her idiosyncratic personality and fashion style, she has received various accolades throughout her career spanning over six decades, including an Academy Award, a British Academy Film Award, two Golden Globe Awards, and the AFI Life Achievement Award.

She began her career on stage appearing in the original 1968 Broadway production of the musical Hair. The next year, she received a Tony Award for Best Featured Actress in a Play nomination for her performance in Woody Allen''s comic play Play it Again, Sam. She then made her screen debut in a small role in Lovers and Other Strangers (1970). She rose to prominence with her first major film role as Kay Adams-Corleone in Francis Ford Coppola''s The Godfather (1972), a role she reprised in its sequels The Godfather Part II (1974) and The Godfather Part III (1990). The films that most shaped her career were those with director and co-star Woody Allen, beginning with the film adaptation of Play It Again, Sam (1972). Her next two films with Allen, Sleeper (1973) and Love and Death (1975), established her as a comic actor. Her fourth, the romantic comedy Annie Hall (1977), won her the Academy Award for Best Actress.', 'USA', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100150', 'David Fincher', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749409583/cmw6s6iy2vnnjun0yfwr.webp', 'David Andrew Leo Fincher (born August 28, 1962) is an American film director. His films, mostly thrillers, have received 40 nominations at the Academy Awards, including three for him as Best Director.

Born in Denver, Colorado, Fincher was interested in filmmaking at an early age. He directed numerous music videos, most notably Madonna''s "Express Yourself" in 1989 and "Vogue" in 1990, both of which won him the MTV Video Music Award for Best Direction. He made his feature film debut with Alien 3 (1992), which garnered mixed reviews, followed by the thriller Seven (1995), which was better received. Fincher found lukewarm success with The Game (1997) and Fight Club (1999), but the latter eventually became a cult classic. In 2002, he returned to prominence with the thriller Panic Room starring Jodie Foster.

Fincher also directed Zodiac (2007), The Social Network (2010), The Girl with the Dragon Tattoo (2011), and Mank (2020). For The Social Network, he won the Golden Globe Award for Best Director and BAFTA Award for Best Direction. His biggest commercial successes are The Curious Case of Benjamin Button (2008) and Gone Girl (2014), both of which grossed more than $300 million worldwide, with the former earning thirteen nominations at the Academy Awards, and eleven at the British Academy Film Awards.

He also served as an executive producer and director for the Netflix series House of Cards (2013–2018) and Mindhunter (2017–2019), winning the Primetime Emmy Award for Outstanding Directing for a Drama Series for the pilot episode of House of Cards. Fincher was the co-founder of Propaganda Films, a film, and music.

David Andrew Leo Fincher (born August 28, 1962) is an American film director. His films, mostly thrillers, have received 40 nominations at the Academy Awards, including three for him as Best Director.

Born in Denver, Colorado, Fincher was interested in filmmaking at an early age. He directed numerous music videos, most notably Madonna''s "Express Yourself" in 1989 and "Vogue" in 1990, both of which won him the MTV Video Music Award for Best Direction. He made his feature film debut with Alien 3 (1992), which garnered mixed reviews, followed by the thriller Seven (1995), which was better received. Fincher found lukewarm success with The Game (1997) and Fight Club (1999), but the latter eventually became a cult classic. In 2002, he returned to prominence with the thriller Panic Room starring Jodie Foster.

Fincher also directed Zodiac (2007), The Social Network (2010), The Girl with the Dragon Tattoo (2011), and Mank (2020). For The Social Network, he won the Golden Globe Award for Best Director and BAFTA Award for Best Direction. His biggest commercial successes are The Curious Case of Benjamin Button (2008) and Gone Girl (2014), both of which grossed more than $300 million worldwide, with the former earning thirteen nominations at the Academy Awards, and eleven at the British Academy Film Awards.

He also served as an executive producer and director for the Netflix series House of Cards (2013–2018) and Mindhunter (2017–2019), winning the Primetime Emmy Award for Outstanding Directing for a Drama Series for the pilot episode of House of Cards. Fincher was the co-founder of Propaganda Films, a film, and music.

', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100151', 'Edward Norton', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749409624/ynvlwefdi1ro8kgvaipv.webp', 'Edward Harrison Norton (born August 18, 1969) is an American actor, producer, director, and screenwriter. After graduating from Yale College in 1991 with a degree in history, he worked for a few months in Japan before moving to Manhattan to pursue an acting career. He gained recognition and critical acclaim for his debut in Primal Fear (1996), which earned him a Golden Globe for Best Supporting Actor and an Academy Award nomination in the same category. His role as a redeemed neo-Nazi in American History X (1998) earned him an Academy Award nomination for Best Actor. He also starred in Fight Club (1999), garring a cult following.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100152', 'Brad Pitt', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749409662/rdtzwj8s02mwrdjltvg9.webp', 'William Bradley Pitt (born December 18, 1963) is an American actor and film producer. He has received various accolades, including two Academy Awards, two British Academy Film Awards, two Golden Globe Awards, and a Primetime Emmy Award. One of the most influential celebrities, Pitt appeared on Forbes'' annual Celebrity 100 list from 2006 to 2008 and the Time 100 list in 2007. His films as a leading actor have grossed over $6.9 billion worldwide.

Pitt first gained recognition as a cowboy hitchhiker in the Ridley Scott road film Thelma & Louise (1991). Pitt emerged as a star, taking on leading man roles in films such as the drama A River Runs Through It (1992), the western Legends of the Fall (1994), the horror film Interview with the Vampire (1994), the crime thriller Seven (1995), and the cult film Fight Club (1999). Pitt found greater commercial success starring in Steven Soderbergh''s heist film Ocean''s Eleven (2001) and reprised his role in its sequels. He cemented his leading man status by starring in blockbusters such as the historical epic Troy (2004), the romantic crime film Mr. & Mrs. Smith (2005), the horror film World War Z (2013), and the action film Bullet Train (2022).', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100153', 'Helena Bonham Carter', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749409710/xiqyrab4dhjqeb7opvfn.webp', 'Helena Bonham Carter CBE (born May 26, 1966) is an English actress. Known for her roles in independent films and blockbusters, especially period dramas, she is the recipient of various accolades, including a British Academy Film Award and three Screen Actors Guild Awards, in addition to nominations for two Academy Awards, four British Academy Television Awards, nine Golden Globe Awards, and five Primetime Emmy Awards.', 'England', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100154', 'Jared Leto', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749409791/mej9ukrjv895dkioamlw.webp', 'Jared Joseph Leto (/ˈlɛtoʊ/; born December 26, 1971) is an American actor and musician. After starting his career with television appearances in the early 1990s, he achieved recognition for his role as Jordan Catalano on the television series My So-Called Life (1994). He made his film debut in How to Make an American Quilt (1995) and received critical praise for his performance in Prefontaine (1997).

After supporting roles in The Thin Red Line (1998), Fight Club (1999), Girl, Interrupted (1999) and American Psycho (2000), and the lead role in Urban Legend (1998), he earned critical acclaim for portraying heroin addict Harry Goldfarb in Requiem for a Dream (2000). He began focusing increasingly on music, then returned to acting with Panic Room (2002), Alexander (2004), Lord of War (2005), Lonely Hearts (2006), Chapter 27 (2007), and Mr. Nobody (2009). His performance as a transgender woman in Dallas Buyers Club (2013) earned him an Academy Award, a Golden Globe Award, and a Screen Actors Guild Award for Best Supporting Actor. He starred in Suicide Squad (2016), Blade Runner 2049 (2017), The Little Things (2021) and House of Gucci (2021), of which the latter two earned him nominations for a Golden Globe Award and Screen Actors Guild Award for Best Supporting Actor.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100155', 'Eion Bailey', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749409836/s34ylpuu5n9nep3pyagy.webp', 'Eion Francis Hamilton Bailey (born June 8, 1976) is an American actor, perhaps best known for appearing in the HBO miniseries Band of Brothers as Pvt. David Kenyon Webster and in the films Fight Club, Center Stage, Mindhunters and Sexual Life. He currently has a recurring role on the USA Network TV show Covert Affairs.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100156', 'Rodney Rothman', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749410022/yrp3lfw6mxermiaqljnn.webp', 'Rodney Rothman is an American filmmaker and author. He is known for his work on Spider-Man: Into the Spider-Verse, Popstar: Never Stop Never Stopping, 22 Jump Street, Forgetting Sarah Marshall, Get Him to the Greek, Undeclared, and Late Show with David Letterman.

He has been nominated for five Primetime Emmy Awards for Outstanding Writing for a Variety Series and also wrote the scripts for Grudge Match, 22 Jump Street, and Spider-Man: Into the Spider-Verse, which served as his feature directorial debut.

Rothman is the author of the best-selling nonfiction humour book Early Bird: A Memoir of Premature Retirement. His writing has also appeared in The New Yorker, GQ, The New York Times, The New York Times Magazine, and McSweeney''s Quarterly. His piece "My Fake Job" was included in The Best American Nonrequired Reading.

His work on Spider-Man: Into the Spide', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100157', 'Shameik Moore', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749410076/y5plnsg0fayhnd8g9xtg.webp', 'Shameik Alti Moore (born May 4, 1995) is an American actor and musician. He made his lead acting debut in Dope (2015) and is best known for voicing Miles Morales / Spider-Man in the animated film Spider-Man: Into the Spider-Verse(2018) and its sequel Across the Spider-Verse (2023) and for portraying Wu-Tang Clan member Raekwon in the Hulu series Wu-Tang: An American Saga.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100158', 'Jake Johnson', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749410139/bkx06ekos3vt7erhk7mv.webp', 'Mark Jake Johnson Weinberger (born May 28, 1978) is an American actor. He starred as Nick Miller in the Fox sitcom New Girl (2011–2018), for which he was nominated for the Critics'' Choice Television Award for Best Actor in a Comedy Series in 2013. He has also voiced a version of Spider-Man in the animated film Spider-Man: Into the Spider-Verse (2018) and its 2023 sequel.

Johnson has also starred in Let''s Be Cops (2014), and appeared in Paper Heart (2009), Safety Not Guaranteed (2012), 21 Jump Street (2012), Jurassic World (2015), The Mummy (2017), and Tag (2018). From 2022 to 2023, he starred in the comedy series Minx. In 2023, he made his directorial debut with Self Reliance.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100159', 'Hailee Steinfeld', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749410193/ilr7ihjwttpiwhmsp2f0.webp', 'Hailee Steinfeld (born December 11, 1996) is an American actress and singer. She had her breakthrough with the western film True Grit (2010), which earned her various accolades, including nominations for an Academy Award and a BAFTA Award.

Steinfeld gained wider recognition for her roles in the Pitch Perfect film series (2015–2017) and The Edge of Seventeen (2016), which earned her a Golden Globe nomination. She also starred in Ender''s Game (2013), Begin Again (2013) and Bumblebee (2018). She voiced Gwen Stacy / Spider-Woman in Spider-Man: Into the Spider-Verse (2018) and its 2023 sequel, and Vi in the Netflix series Arcane (2021–2024). She portrayed Emily Dickinson in the Apple TV+ series Dickinson (2019–2021), and has portrayed Kate Bishop in the Marvel Cinematic Universe since 2021.

Steinfeld gained recognition in music after performing "Flashlight" in Pitch Perfect 2 (2015), signing with Republic Records soon after and released her debut single, "Love Myself", followed by her debut EP Haiz (2015). She went on to release a series of successful singles, including "Starving", "Most Girls" and "Let Me Go". In 2020, she released her second EP, Half Written Story.', 'USA', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100160', 'Mahershala Ali', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749410253/uylqejnllhyitiwjdwjl.webp', 'Mahershala Ali (/məˈhɜːrʃələ/ mə-HUR-shə-lə; born Mahershalalhashbaz Gilmore on February 16, 1974) is an American actor. He has received multiple accolades, including two Academy Awards, a British Academy Film Award, a Golden Globe Award, and a Primetime Emmy Award. Time magazine named him one of the 100 most influential people in the world in 2019, and in 2020, The New York Times ranked him among the 25 greatest actors of the 21st century.

After pursuing an MFA degree from New York University, Ali began his career as a regular on television series Crossing Jordan (2001–02) and Threat Matrix (2003–04), before his breakthrough role as Richard Tyler in the science fiction series The 4400 (2004–07). His first major film role was in the David Fincher-directed fantasy The Curious Case of Benjamin Button (2008). He gained wider attention for supporting roles in the final two films of the original The Hunger Games film series and in House of Cards, for which he received his first Primetime Emmy Award nomination.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100161', 'Lily Tomlin', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749410315/s7jtmrbpbtprufidpyk7.webp', 'Mary Jean "Lily" Tomlin (born September 1, 1939) is an American actress, comedian, writer and producer. She has won multiple awards from many quarters, including Tony Awards, Emmy Awards, and a Grammy Award and has also been nominated for an Academy Award.', 'USA', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100226', 'Sonam Kapoor Ahuja', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749918270/bkmvet7vxelmlyzcgofs.webp', 'Sonam Kapoor is an Indian actress who appears in Bollywood films and daughter of actor Anil Kapoor. Kapoor studied theatre and arts at the United World College of South East Asia in Singapore. She was an assistant director to Sanjay Leela Bhansali on the 2005 film Black.

Kapoor made her acting debut in Bhansali''s romantic drama Saawariya (2007), which earned her a nomination for the Filmfare Award for Best Female Debut. After a series of commercial failures, the sleeper hit Raanjhanaa (2013) marked a turning point in her career, earning her several Best Actress nominations.', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100227', 'Divya Dutta', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749918312/lv0dairf3lvjdfsm5nmb.webp', 'Divya Dutta (born 25 September 1977)[1][2] is an Indian actress and model. She has appeared in Hindi and Punjabi cinema, in addition to Malayalam and English-language films. She has received many awards including a National Film Award, a Filmfare OTT Award and 2 IIFA Awards.

Dutta debuted in Hindi cinema in 1994 with the film Ishq Mein Jeena Ishq Mein Marna, which she followed up with a lead role in the 1995 drama Veergati and a string of supporting roles. She then garnered attention for playing the lead role of Zainab, a Muslim wife separated from her Sikh husband, in the 1999 Punjabi film Shaheed-e-Mohabbat Boota Singh, set against the backdrop of the 1947 Partition of India. The movie was a surprise hit, and Dutta subsequently continued to act in supporting roles. In 2004, Dutta garnered widespread critical acclaim for her role as Shabbo in the romantic drama Veer-Zaara and earned Best Supporting Actress nominations at several awards ceremonies, including Filmfare. source: Wikipedia.', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100228', 'Pavan Malhotra', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749918351/mw1mxerwgrnxozksx339.webp', 'We don''t have a biography for Pavan Malhotra.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100229', 'Rakeysh Omprakash Mehra', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749918661/a16nqdd0p6ht5k5vlwfx.webp', 'From Wikipedia, the free encyclopedia. Rakeysh Omprakash Mehra (born 7 July 1963) in a Hindu Punjabi Family in New Delhi. He is an Indian filmmaker and screenwriter. He is best known for writing and directing Rang De Basanti (2006), for which he won Best Director awards at the 2006 Filmfare Awards and National Film Awards and received a BAFTA Award nomination for Best Foreign Language Film. He is also the writer and director of the films Aks (2001) and Delhi-6 (2009).', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100206', 'Ravi Kinagi', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749453016/lstyibbyr22oh8zrozwu.webp', 'Ravi Kinagi was born into a Kannada family. He learned the basics of filmmaking from his father Shankar Kinagi who was a producer and director. He was born and brought up in Mumbai. He worked with Rajshri Films when they were making Paheli, Naiyya, and Kanoon Ka Shikar. He also assisted S Ramanathan, Anil Ganguly, and Prashant Nanda. He then directed two Marathi films, Manuski and Halahal. Later he started making Odia films. His first Odia film Manini was said to be the first Silver Jubilee film in Odisha. He finally shifted to the Kolkata Bengali film industry where he has made numerous dumbed down remake films over the years. He speaks seven languages — Kannada, Hindi, English, Marathi, Gujarati, Odia, and broken Bengali.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100207', 'Barkha Bisht', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749453252/xbid3hwl6dlgdmbkmsbe.webp', 'Barkha Bisht (born 28 December 1979) commonly known by as Barkha is an Indian Television and Film Actress. She works in Hindi TV serials and Bengali, Hindi Movies. Barkha made her first TV appearance in Kitni Mast Hai Zindagi as Udita. She made her screen debut in Hindi Film Raajneeti (2010) and Bengali film debut in Dui Prithibi (2010). ', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100208', 'Raj Chakraborty', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749453499/arapyffwtvie9a7v6ast.webp', 'Raj Chakraborty (born 21 February 1975) is an Indian film director, actor, producer and politician. He is one of the most commercially successful film-makers in West Bengal. Before directing his debut film, he was associated with Zee Bangla''s popular laughter show Mirakkel, hosted by Mir, and dance competition Dance Bangla Dance, judged by Mithun Chakraborty, during their initial days. He also directed Star Jalsha''s laughter programme I Laugh You. He has been a Member of Legislative Assembly of West Bengal from Barrackpore since May 2021.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100209', 'Subhashree Ganguly', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749453617/rzuwgogdc9twiphxem75.webp', 'Subhashree Ganguly Chakraborty is an Indian film actress and model. She forayed into showbiz by becoming the winner of Fairever Anandalok Nayikar Khonje in 2006. Born: 3 November 1990, Burdwan

Height: 1.65 m

Partner: Raj Chakraborty (2018–)

Children: 2', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100210', 'James Wan', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749454059/w5hawqfzapl6olfw7wak.webp', 'James Wan (born 26 February 1977) is an Australian filmmaker. He has primarily worked in the horror genre as the co-creator of the Saw and Insidious franchises and the creator of The Conjuring Universe. The lattermost is the highest-grossing horror franchise at over $2 billion. Wan is also the founder of the film and television production company Atomic Monster.

Beginning his career with the Saw franchise, Wan made his feature directorial debut with his first film in 2004. The franchise became commercially successful and grossed more than $1 billion globally. Following a period of setbacks, Wan found new success with the Insidious series, in which he directed the first film in 2010 and its 2013 sequel. The same year as the second Insidious, Wan directed the first Conjuring film to critical and commercial success. He served as the director of the second installment in 2016 and produced subsequent films in the franchise.', 'Australia', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100211', 'Patrick Wilson', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749454089/bkcl3vdglkvikihvevhp.webp', 'Patrick Joseph Wilson (born July 3, 1973) is an American actor, director, and singer. He began his career in 1995, starring in Broadway musicals. He is a two-time Tony Award nominee for his roles in The Full Monty (2000–2001) and Oklahoma! (2002). He co-starred in the acclaimed HBO miniseries Angels in America (2003), for which he was nominated for both the Golden Globe Award and Primetime Emmy Award for Outstanding Supporting Actor in a Miniseries or a Movie.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100212', 'Vera Farmiga', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749454123/gkzjxk9f0cpbcu8hvmmx.webp', 'Vera Ann Farmiga (/fɑːrˈmiːɡə/ far-MEE-gə; born August 6, 1973) is an American actress. Farmiga began her professional acting career on stage in the original Broadway production of Taking Sides (1996). After expanding to television and film, her breakthrough came with her starring role as a drug addict in the drama Down to the Bone (2004). She then had roles in the political thriller The Manchurian Candidate (2004), the crime drama The Departed (2006), and the historical drama The Boy in the Striped Pyjamas (2008). She was also established as a scream queen for her performances in the horror films Joshua (2007) and Orphan (2009).', 'USA', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100213', 'Lili Taylor', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749454165/tzbhrc96nbejeuysih2m.webp', 'Lili Anne Taylor (born February 20, 1967) is an American actress. She came to prominence with supporting parts in the films Mystic Pizza (1988) and Say Anything... (1989), before establishing herself as one of the key figures of 1990s independent cinema through starring roles in Bright Angel (1990), Dogfight (1991), Household Saints, Short Cuts (both 1993), The Addiction (1995), I Shot Andy Warhol (1996), and Pecker (1998). Taylor is the recipient of four Independent Spirit nominations, winning once in the category of Best Supporting Female.

Alongside her work on smaller-scale projects, Taylor has encountered mainstream success with parts in films such as Born on the Fourth of July (1989), Rudy (1993), Ransom (1996), High Fidelity (2000), Public Enemies (2009), The Conjuring (2013), and Maze Runner: The Scorch Trials (2015). Other credits include The Notorious Bettie Page (2005), To the Bone (2017), and Paper Spiders (2020).', 'USA', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100214', 'Ron Livingston', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749454198/rknwugok8o8fwvmg61fk.webp', 'Ronald Joseph "Ron" Livingston (born June 5, 1967) is an American film and television actor. His roles include a disaffected corporate employee in the film Office Space, a sardonic writer in a short-term relationship with Carrie Bradshaw in the TV show Sex and the City, and Captain Lewis Nixon in the miniseries Band of Brothers. In 2006, he starred as FBI negotiator Matt Flannery in the Fox series Standoff, co-starring Rosemarie DeWitt, and he was an ad spokesman for Sprint Nextel. In 2009 he portrayed flight engineer Maddux Donner in the series Defying Gravity, which was cancelled after a single season.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100215', 'Mackenzie Foy', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749454231/oii2xmq5bccdenk4fsjc.webp', 'Mackenzie Christine Foy (born November 10, 2000) is an American actress and model. She is known for portraying Renesmee Cullen in the 2012 film The Twilight Saga: Breaking Dawn – Part 2, which earned her a Young Artist Award nomination as Best Supporting Young Actress in a Feature Film. She portrayed young Murphy in the 2014 space epic Interstellar, for which she received a Saturn Award for Best Performance by a Younger Actor among other awards nominations. She starred as Clara in Disney''s 2018 film The Nutcracker and the Four Realms.', 'USA', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100216', 'Linda Cardellini', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749456415/gilceocq4tsdtkf9fs0w.webp', 'Linda Edna Cardellini (born June 25, 1975) is an American actress. In television, she is known for her leading roles in the teen drama Freaks and Geeks (1999–2000), the medical drama ER (2003–09), the drama thriller Bloodline (2015–17), and the tragicomedy Dead to Me (2019–present), the latter of which earned her a nomination for the Primetime Emmy Award for Outstanding Lead Actress in a Comedy Series. She also guest starred in the period drama Mad Men (2013–15), for which she received a Primetime Emmy Award nomination. Her voice work includes the animated series Scooby-Doo! Mystery Incorporated (2010–13), Regular Show (2012–15), Gravity Falls (2012–16), and Sanjay and Craig (2013–16).', 'USA', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100217', 'Sebastian Maniscalco', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749456442/v8pieiaisoxug1wguxwa.webp', 'Sebastian Maniscalco (born July 8, 1973) is an American stand-up comedian and actor. He has since released five comedy specials. Maniscalco has also had supporting acting roles in the films Green Book (2018) and The Irishman (2019), playing mobster Joe Gallo in the latter.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100218', 'Dimiter D. Marinov', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749456477/ldusriljpplkkvma9tpa.webp', 'We don''t have a biography for Dimiter D. Marinov.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100219', 'Peter Farrelly', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749456683/ggatrqxnz8rmskgn59dk.webp', 'Peter John Farrelly (born December 17, 1956) is an American film director, screenwriter, producer, and novelist, known for his work in the comedy genre with his younger brother Bobby, writing and directing films such as "Dumb and Dumber" (1994), "There''s Something About Mary" (1998), and "Me, Myself & Irene" (2000). After a twenty-year run of collaborations that culminated in the sequel "Dumb and Dumber To" (2014), the Farrelly brothers embarked on solo careers. Peter made his solo directorial debut with the period drama "Green Book" (2018), which went on to win Best Picture at the Academy Awards in 2019.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100241', 'Denis Villeneuve', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749999147/ykdhuam1reuwnr89zxjk.webp', 'Denis Villeneuve OC CQ RCA OAL (French: [dənivilnœv]; born October 3, 1967) is a Canadian filmmaker. He has received seven Canadian Screen Awards as well as nominations for three Academy Awards, five BAFTA Awards, and two Golden Globe Awards. Villeneuve''s films have grossed more than $1.8 billion worldwide.

Villeneuve began his career in his home country, directing four French-language dramas: August 32nd on Earth (1998); Maelström (2000); Polytechnique (2009), a dramatisation of the 1989 École Polytechnique massacre; and Incendies (2010). The last of these gained him international prominence and earned a nomination for the Academy Award for Best International Feature Film. He expanded to English-language films by directing the thrillers Prisoners (2013), Enemy (2013), and Sicario (2015).

Villeneuve gained wider recognition for directing science fiction films. His work on Arrival (2016) earned him a nomination for the Academy Award for Best Director. This was followed by Blade Runner 2049 (2017), which was critically lauded but financially unsuccessful. His next projects were Dune (2021) and Dune: Part Two (2024), a two-part adaptation of Frank Herbert''s novel of the same name. Both films were critically and commercially successful, with the former earning him Academy Award nominations for Best Adapted Screenplay and Best Picture.', 'France', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100242', 'Timothée Chalamet', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749999198/zrkmm4cgxf59t7dzyapm.webp', 'Timothée Hal Chalamet (born December 27, 1995) is an American actor.

He began his career appearing in the drama series Homeland in 2012. Two years later, he made his film debut in the comedy-drama Men, Women & Children and appeared in Christopher Nolan''s science fiction film Interstellar. He came into attention in Luca Guadagnino''s coming-of-age film Call Me by Your Name (2017). Alongside supporting roles in Greta Gerwig''s films Lady Bird (2017) and Little Women (2019), he took on starring roles in Beautiful Boy (2018) and Dune (2021).', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100243', 'Rebecca Ferguson', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749999247/saxarcvpkg0fbpe740e1.webp', 'Rebecca Louisa Ferguson Sundström (born 19 October 1983) is a Swedish actress. She is bilingual and has worked extensively in Sweden, Great Britain, and mainly in the United States. Ferguson began her television acting career in 1999 with the Swedish soap opera Nya Tide, and she made her motion picture debut in 2004 with the Swedish slasher film Drowning Ghost. She came to international prominence with her portrayal of Elizabeth Woodville in the British BBC drama The White Queen (2013), for which she was nominated for a Golden Globe for Best Actress in a Miniseries or Television Film.

Ferguson starred as MI6 agent Ilsa Faust, opposite Tom Cruise, in three of the Mission: Impossible films: Rogue Nation (2015), Fallout (2018), and Dead Reckoning Part One (2023). She played Jenny Lind in the musical film The Greatest Showman (2017), starred in the horror films Life (2017) and Doctor Sleep(2019), and had supporting parts in the comedy-drama Florence Foster Jenkins (2016), the thriller The Girl on the Train (2016), and the science fiction films Dune(2021) and Dune: Part Two (2024). In 2023, she began starring in the Apple TV+science fiction series Silo.', 'Sweden', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100221', 'Rashmika Mandanna', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749895256/fmrie7f7a66f7gfknxdf.webp', 'Rashmika Mandanna is an Indian Kannada language model and actress, who acts in south Indian Films mostly. Starting her career as a model, she made her debut in films in 2016', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100222', 'Anil Kapoor', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749895301/op6qkaqezk8iijh3wvuy.webp', 'Living in a Chawl in Tilak Nagar, Punjabi-speaking Anil was born in 1959 to Surinder and Nirmal aka Suchitra Kapoor. He has an elder brother, Boney, a sister, Reena, and a younger brother, Sanjay. His dad used to be Shammi Kapoor''s Secretary.

A loner, without many friends, he studied in the nearby O.L.P.S. (Our Lady of Perpetual Succor) School, and was an ardent fan of Bollywood flicks that were telecast during the Ganesh Maha Utsav every year. He was a fan of Raj Kapoor, and it was this that influenced his acting, and people saw him as a mimic of the legendary showman. He landed a role as a child artiste with Shashi Kapoor in the lead, but the movie (Tu Payal Main Geet) was never released.

After school, he went to study in St. Xaviers College. He commuted by bus and train from Chembur to Bombay V.T., and the walked the rest of the way. It was here that he met Mazhar Khan. A distracted Anil was kicked out of College in the second year due to his lack of presence. His attempts to join the Pune Film Institute were in vain, as he failed in the written examination. He then decided to join Roshan Taneja''s Acting school.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100223', 'Bobby Deol', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749895343/yjqaxc53fntpwgino0sy.webp', 'Bobby Deol (born January 27, 1969) is an Indian film actor who works in Hindi films. In a career spanning more than two decades, he has appeared in over forty films and is the recipient of a Filmfare Award and a Filmfare Best Actor Award nomination. He is the son of Dharmendra and the brother of Sunny Deol, also a successful actor in the Indian Film Industry. He is particularly noted for acting in several thriller films, often playing antiheroic characters who are forced to commit crimes to avenge the deaths of loved ones and his films commonly involve themes of jealousy, deceit, revenge and romantic thrillers often involving him caught in love triangles.

Deol briefly appeared as a child actor in the film Dharam Veer in 1977 and made his acting debut as an adult in Barsaat (1995) which garnered him the Filmfare Best Debut Award. In addition to acting in films, Deol is involved with several humanitarian causes and has participated in concert tours and stage shows.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100224', 'Triptii Dimri', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749895383/trjsa8n3vvppznbxofp0.webp', '
Triptii Dimri is an Indian actress whose talent was discovered by Sajid Ali which gave her, her breakthrough role with the classic love story ‘Laila Majnu’ (2018) where she played the role of “Laila.” She was fascinated by the glamorous life since the start and thus, started her career as a model.', 'India', 'Female');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100225', 'Sandeep Reddy Vanga', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749895627/f69de5xnhmv3ov0mssjy.webp', 'Sandeep Reddy Vanga is an Indian film director and screenwriter based in Telugu and Hindi cinema. He made his directorial debut with Arjun Reddy (2017), which he subsequently remade in Hindi as Kabir Singh. Both films were largely successful but controversial among critics, earning Vanga notoriety in the industry. He then went on to direct Animal (2023), which attracted increased controversy but became the highest-grossing A-rated Indian film of all time. Themes of masculinity and sexuality feature prominently in Vanga''s work.', 'India', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100244', 'Oscar Isaac', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749999303/csviuvm9zr7alckya6wl.webp', 'Óscar Isaac Hernández Estrada (born March 9, 1979) is an American actor. After making his acting debut in the late 1990s, he studied acting at the Juilliard School and played small roles for a majority of the 2000s. For portraying José Ramos-Horta in the Australian film Balibo (2006), Isaac won the AACTA Award for Best Actor in a Supporting Role. Following supporting roles in major films such as Body of Lies (2008), Robin Hood (2010) and Drive (2011), Isaac had his breakthrough with the starring role of a singer in the Coen brothers'' black comedy Inside Llewyn Davis (2013), earning a nomination for a Golden Globe Award.

Isaac''s career progressed with leading roles in the crime drama A Most Violent Year (2014), the thriller Ex Machina (2015), and the superhero film X-Men: Apocalypse (2016). He became a global star with his starring role as Poe Dameron in the Star Wars sequel trilogy (2015–2019). He has since starred in the science fiction films Annihilation (2018) and Dune (2021), and the crime drama The Card Counter (2021).

On television, Isaac has starred in the HBO miniseries Show Me a Hero (2015) and Scenes from a Marriage (2021), winning the Golden Globe Award for Best Actor – Miniseries or Television Film for portraying Nick Wasicsko in the former. In 2022, he began starring as the Marvel Cinematic Universe character Moon Knight in the Disney+ series Moon Knight (2022).', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100245', 'Jason Momoa', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749999343/fymbqcgdqd5m432c4mv6.webp', 'Joseph Jason Namakaeha Momoa (born August 1, 1979) is an American actor and filmmaker. He made his acting debut as Jason Ioane on the syndicated action drama series Baywatch: Hawaii (1999–2001), which was followed by his portrayal of Ronon Dex on the Syfy science fiction series Stargate Atlantis (2005–2009), Khal Drogo in the first two seasons of the HBO fantasy drama series Game of Thrones (2011–2012), Declan Harp on the Discovery Channel historical drama series Frontier (2016–2018), and Baba Voss on the Apple TV+ science fiction series See (2019–present). Momoa was featured as the lead of the two lattermost series.

Since 2016, Momoa portrays Arthur Curry / Aquaman in the DC Extended Universe (DCEU), headlining the eponymous 2018 film and its 2023 sequel. Momoa also played Duncan Idaho in the 2021 film adaptation of the science fiction novel Dune.', 'USA', 'Male');
INSERT INTO "MYMOVIES"."CELEB" VALUES ('100261', 'Romen', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1750842588/krtutsqxsqtu0zhjvl1x.webp', 'kjasdnfkjab', 'Bangladesh', 'Male');

-- ----------------------------
-- Table structure for CELEB_AWARD
-- ----------------------------
DROP TABLE "MYMOVIES"."CELEB_AWARD";
CREATE TABLE "MYMOVIES"."CELEB_AWARD" (
  "MOVIEID" NUMBER VISIBLE,
  "CELEBID" NUMBER VISIBLE,
  "AWARDID" NUMBER VISIBLE,
  "RECIEVEDATE" NUMBER(4,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CELEB_AWARD
-- ----------------------------
INSERT INTO "MYMOVIES"."CELEB_AWARD" VALUES ('100107', '100085', '1013', '1990');
INSERT INTO "MYMOVIES"."CELEB_AWARD" VALUES ('100069', '100121', '1015', '2015');
INSERT INTO "MYMOVIES"."CELEB_AWARD" VALUES ('100101', '100018', '1009', '2009');
INSERT INTO "MYMOVIES"."CELEB_AWARD" VALUES ('100069', '100121', '1019', '2010');
INSERT INTO "MYMOVIES"."CELEB_AWARD" VALUES ('100101', '100023', '1009', '2012');
INSERT INTO "MYMOVIES"."CELEB_AWARD" VALUES ('100115', '100083', '1009', '2009');

-- ----------------------------
-- Table structure for GENRE
-- ----------------------------
DROP TABLE "MYMOVIES"."GENRE";
CREATE TABLE "MYMOVIES"."GENRE" (
  "ID" NUMBER VISIBLE NOT NULL,
  "TITLE" VARCHAR2(15 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of GENRE
-- ----------------------------
INSERT INTO "MYMOVIES"."GENRE" VALUES ('1001', 'Action');
INSERT INTO "MYMOVIES"."GENRE" VALUES ('1002', 'Adventure');
INSERT INTO "MYMOVIES"."GENRE" VALUES ('1011', 'Animation');
INSERT INTO "MYMOVIES"."GENRE" VALUES ('1022', 'Biography');
INSERT INTO "MYMOVIES"."GENRE" VALUES ('1003', 'Comedy');
INSERT INTO "MYMOVIES"."GENRE" VALUES ('1008', 'Crime');
INSERT INTO "MYMOVIES"."GENRE" VALUES ('1009', 'Drama');
INSERT INTO "MYMOVIES"."GENRE" VALUES ('1010', 'Fantasy');
INSERT INTO "MYMOVIES"."GENRE" VALUES ('1005', 'Horror');
INSERT INTO "MYMOVIES"."GENRE" VALUES ('1006', 'Romance');
INSERT INTO "MYMOVIES"."GENRE" VALUES ('1021', 'Science Fiction');
INSERT INTO "MYMOVIES"."GENRE" VALUES ('1007', 'SuperHero');
INSERT INTO "MYMOVIES"."GENRE" VALUES ('1004', 'Thriller');

-- ----------------------------
-- Table structure for LANGUAGE
-- ----------------------------
DROP TABLE "MYMOVIES"."LANGUAGE";
CREATE TABLE "MYMOVIES"."LANGUAGE" (
  "ID" NUMBER VISIBLE NOT NULL,
  "TITLE" VARCHAR2(15 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of LANGUAGE
-- ----------------------------
INSERT INTO "MYMOVIES"."LANGUAGE" VALUES ('1002', 'Bangla');
INSERT INTO "MYMOVIES"."LANGUAGE" VALUES ('1001', 'English');
INSERT INTO "MYMOVIES"."LANGUAGE" VALUES ('1021', 'Hindi');
INSERT INTO "MYMOVIES"."LANGUAGE" VALUES ('1041', 'Kannada');
INSERT INTO "MYMOVIES"."LANGUAGE" VALUES ('1003', 'Tamil');
INSERT INTO "MYMOVIES"."LANGUAGE" VALUES ('1004', 'Telegu');

-- ----------------------------
-- Table structure for MOVIE
-- ----------------------------
DROP TABLE "MYMOVIES"."MOVIE";
CREATE TABLE "MYMOVIES"."MOVIE" (
  "ID" NUMBER VISIBLE NOT NULL,
  "TITLE" VARCHAR2(65 BYTE) VISIBLE NOT NULL,
  "DURATION" NUMBER VISIBLE NOT NULL,
  "COVERPHOTO" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "POSTER" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "DESCRIPTION" VARCHAR2(4000 BYTE) VISIBLE NOT NULL,
  "RELEASEDATE" DATE VISIBLE NOT NULL,
  "COUNTRY" VARCHAR2(25 BYTE) VISIBLE NOT NULL,
  "LANGUAGE" VARCHAR2(15 BYTE) VISIBLE NOT NULL,
  "AVGRATING" NUMBER VISIBLE DEFAULT 0
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MOVIE
-- ----------------------------
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100107', 'Interstellar ', '169', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749448001/nyh0c0csxnl45ck7fzpd.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749448000/ekhn9iuqjh0utau4bojy.webp', 'The adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.', TO_DATE('2014-11-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'English', '9.3');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100108', '3 Idiots ', '171', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749448287/yqluvksbf4m1hghuuk1h.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749448287/zyldceyie0cvvdhjyx3b.webp', 'Rascal. Joker. Dreamer. Genius... You''ve never met a college student quite like "Rancho." From the moment he arrives at India''s most prestigious university, Rancho''s outlandish schemes turn the campus upside down—along with the lives of his two newfound best friends. Together, they make life miserable for "Virus," the school’s uptight and heartless dean. But when Rancho catches the eye of the dean''s daughter, Virus sets his sights on flunking out the "3 idiots" once and for all.', TO_DATE('2009-12-25 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Hindi', '0');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100109', 'Deadpool 2', '120', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749448712/ag7ydu8m0bn8m0paf4dg.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749448711/tyvrrbwmij3b7lyhdw7c.webp', 'Wisecracking mercenary Deadpool battles the evil and powerful Cable and other bad guys to save a boy''s life.', TO_DATE('2018-05-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'English', '7.9');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100110', 'The Matrix ', '136', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749451122/gu8uywirwefb7rmyiljo.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749451121/w5ba2kovnevytdwricxc.webp', 'Set in the 22nd century, The Matrix tells the story of a computer hacker who joins a group of underground insurgents fighting the vast and powerful computers who now rule the earth.', TO_DATE('1999-07-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'English', '6.8');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100111', 'Spider-Man Into the Spider-Verse', '117', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749451361/earwncinuyd7xnisco9y.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749451359/kpzdhj8mrlurakoyiwyf.webp', 'Struggling to find his place in the world while juggling school and family, Brooklyn teenager Miles Morales is unexpectedly bitten by a radioactive spider and develops unfathomable powers just like the one and only Spider-Man. While wrestling with the implications of his new abilities, Miles discovers a super collider created by the madman Wilson "Kingpin" Fisk, causing others from across the Spider-Verse to be inadvertently transported to his dimension.', TO_DATE('2018-12-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'English', '8');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100105', 'The Godfather', '175', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749447169/lwvusqt9yzj5psl13ipu.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749447168/dixsv9a2j1nhjficafvs.webp', 'Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.', TO_DATE('1972-03-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'English', '0');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100106', 'Dilwale Dulhania Le Jayenge', '190', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749447358/rscbrbegsza02m2tmkdk.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749447357/kzjdb0ugevnga7xfuyly.webp', 'Raj is a rich, carefree, happy-go-lucky second generation NRI. Simran is the daughter of Chaudhary Baldev Singh, who in spite of being an NRI is very strict about adherence to Indian values. Simran has left for India to be married to her childhood fiancé. Raj leaves for India with a mission at his hands, to claim his lady love under the noses of her whole family. Thus begins a saga.', TO_DATE('1995-10-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Hindi', '0');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100112', 'Bajrangi Bhaijaan', '159', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749451574/cw5wqjlayb9zxksy35kq.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749451573/alrd5rks2q96kx9cixtf.webp', 'A young mute girl from Pakistan loses herself in India with no way to head back. A devoted man with a magnanimous spirit undertakes the task to get her back to her motherland and unite her with her family.', TO_DATE('2015-07-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Hindi', '8');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100113', 'The Godfather Part II', '202', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749452260/usqlsagocanhhsvig2on.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749452259/oejdaviexek93qndd7uk.webp', 'In the continuing saga of the Corleone crime family, a young Vito Corleone grows up in Sicily and in 1910s New York. In the 1950s, Michael Corleone attempts to expand the family business into Las Vegas, Hollywood and Cuba.', TO_DATE('1974-12-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'English', '7');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100114', 'Barfi!', '151', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749452484/yqmguqh4iwhty7i0ohu5.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749452483/jhwlgxzaqofdnxsoqany.webp', 'The heartwarming tale of Barfi, a charming deaf-mute young man from 1970s Darjeeling, and two unalike women who can''t help but fall for him.', TO_DATE('2012-09-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Hindi', '8');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100115', 'Bolo Na Tumi Amar', '160', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749452861/oxj8swmrcihlrdfzarkb.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749452860/dwvimwhgrqlajq7fwtrz.webp', 'A couple marry in order to save the bride from her father''s choice of groom, but they don''t actually love each other. It''s "make it work" time.', TO_DATE('2010-01-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Bangla', '5.5');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100116', '100% Love', '166', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749453173/vgdfgofjilumjghorxyi.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749453172/qfviuuonjbhz05khkmqv.webp', 'Rahul, who hails from a middle-class family, comes across Anuradha, immediately falls in love with her and travels to Australia. However, his father dies and he soon learns that she is getting married to his friend.', TO_DATE('2012-01-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Bangla', '0');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100117', 'Dui Prithibi', '150', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749453441/ggedj4s0u8eftmydm6td.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749453440/gz6cqwxr4wcuvppyyxkr.webp', 'A rich man falls in love with an idealistic medical student. However, when circumstances force them apart, he learns the true meaning and value of love.', TO_DATE('2010-10-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Bangla', '0');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100118', 'Challenge', '140', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749453807/xelanvjhtfjpmvr98yxo.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749453806/yc2auul1lnzn4xgtbjn1.webp', 'A young woman is not so much playing hard-to-get as she is literally hard to get, given her wealthy and ruthless father who will protect her from male advances at any cost.', TO_DATE('2009-03-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Bangla', '5.5');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100119', 'The Conjuring', '112', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749454432/oowzieybpha8oizxeya1.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749454431/bn1hyyri1toruiznkshd.webp', 'Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse. Forced to confront a powerful entity, the Warrens find themselves caught in the most terrifying case of their lives.', TO_DATE('2013-11-29 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'English', '6.5');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100120', 'Green Book ', '130', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749456642/ewc7hfwmylkcud7s0zxu.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749456640/n7neydrtxhu1dio6xjlu.webp', 'Tony Lip, a bouncer in 1962, is hired to drive pianist Don Shirley on a tour through the Deep South in the days when African Americans, forced to find alternate accommodations and services due to segregation laws below the Mason-Dixon Line, relied on a guide called The Negro Motorist Green Book.', TO_DATE('2018-11-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'English', '7');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100122', 'Animal', '201', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749895559/xrbmuvlwknijvplggmrw.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749895557/kreba283rz4ndjwb1coz.webp', 'The hardened son of a powerful industrialist returns home after years abroad and vows to take bloody revenge on those threatening his father''s life.', TO_DATE('2023-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Hindi', '8');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100121', 'Fight Club', '139', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749894677/fndf9qegybrdi4axpku8.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749894676/frdt5exlgevdkdhvnxpa.webp', 'A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground "fight clubs" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.', TO_DATE('1999-10-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'English', '0');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100123', 'Bhaag Milkha Bhaag', '186', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749918587/k55pesy9bcc60zrzll7h.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749918585/xmrg97nyhdy1wxxswuyr.webp', '
The true story of the "Flying Sikh" world champion runner and Olympian Milkha Singh who overcame the massacre of his family, civil war during the India-Pakistan partition, and homelessness to become one of India''s most iconic athletes.', TO_DATE('2013-07-12 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Hindi', '0');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100065', 'Besh Korechi Prem Korechi', '144', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749049697/vzwe0blpwr5478l6egik.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749049695/gxjtprilah8woizisk7c.webp', 'Abhi stirs up a hornets nest when he helps the sister of an underworld kingpin elope on her wedding day. Then he falls for the don''s other sister, Rai. What transpires is a rib-tickling game of cat and mouse.', TO_DATE('2015-07-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Bangla', '0');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100066', 'Hemlock Society', '140', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749052081/w1tzr5rqafp9kcsw2p5g.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749052080/qtlpuc6zg4nfgc2ckn7y.webp', 'Hemlock Society is a school that teaches aspirants how to successfully commit suicide. Meghna, one of the aspirants, has a near-death experience, turning everybody''s lives upside-down.', TO_DATE('2012-06-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Bangla', '2');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100067', 'K.G.F: Chapter 1', '156', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749052951/r9o3i6f5kgrwo0ijrfr3.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749052950/kc0wm1tc2tvjlfgksiyj.webp', 'A period drama set in the 1970s, KGF follows the story of a fierce rebel who rises against the brutal oppression in Kolar Gold Fields and becomes the symbol of hope to legions of downtrodden people.', TO_DATE('2018-12-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Kannada', '7.6');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100068', 'Race Gurram', '162', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749053884/atvyxcaa7ikcik4aovut.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749053883/d9xf9vo8gd84rw2yxokh.webp', 'Ram and Lakshman, aka Lucky, are brothers who are polar opposites in nature. Their mother wishes to see them united.', TO_DATE('2014-04-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Telegu', '7');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100069', 'Don 2', '139', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749054660/ee4w1dgaxqwewxhpsrj8.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749054659/yujyhhrei9clotoahvk3.webp', 'Having conquered the Asian underworld, crime boss Don sets in motion a plan that will give him dominion over Europe.', TO_DATE('2011-12-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Hindi', '7');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100070', 'Swades', '195', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749055300/lqocxnkphnwwhzstblg2.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749055298/hkddrs0lxgmapqbcz9gn.webp', 'A successful Indian scientist returns home to his village to take his nanny back to America with him, and in the process rediscovers his roots.', TO_DATE('2004-12-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Hindi', '0');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100181', 'test', '5', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1751988744/jcwnrvydznwuwupz8n9q.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1751988741/pictv2mdhret8irgxs6c.webp', 'asdfkjh', TO_DATE('2004-11-12 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Bangla', '0');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100124', 'Dune', '156', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749999577/k6n7aiycgnutyokpywxl.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749999576/necsjskqvl9vglj5m6gl.webp', 'Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet''s exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity''s greatest potential-only those who can conquer their fear will survive.', TO_DATE('2021-10-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'English', '8.4');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100101', 'The Dark Knight', '152', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749366368/fwzkdw2kedcsf1ngi4mc.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749366367/txuh2ylfesx9de7rwdyr.webp', 'Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.', TO_DATE('2008-07-18 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'English', '0');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100103', 'Deadpool', '108', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749366793/f2aeefcaiktzsvliuisk.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749366791/ryvkqdbeqvsjfragt7fg.webp', 'The origin story of former Special Forces operative turned mercenary Wade Wilson, who, after being subjected to a rogue experiment that leaves him with accelerated healing powers, adopts the alter ego Deadpool. Armed with his new abilities and a dark, twisted sense of humor, Deadpool hunts down the man who nearly destroyed his life.', TO_DATE('2016-02-12 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'English', '4.5');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100104', 'Sedin Dekha Hoyechilo', '160', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749367104/oqivegnry4zsyiajbzeu.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749367103/f1gn46rqab7wxhpls7oq.webp', 'The hunt for an eloping couple draws two young people together.', TO_DATE('2010-12-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Bangla', '0');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100102', 'The Dark Knight Rises', '165', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749366581/eolqfkhlzuim6ahjkwoq.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749366580/bqjli8sxd59vggrqourd.webp', 'Following the death of District Attorney Harvey Dent, Batman assumes responsibility for Dent''s crimes to protect the late attorney''s reputation and is subsequently hunted by the Gotham City Police Department. Eight years later, Batman encounters the mysterious Selina Kyle and the villainous Bane, a new terrorist leader who overwhelms Gotham''s finest. The Dark Knight resurfaces to protect a city that has branded him an enemy.', TO_DATE('2012-07-20 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'USA', 'English', '7.5');
INSERT INTO "MYMOVIES"."MOVIE" VALUES ('100163', 'test34', '123', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1750842525/culdfdby9welef94s22y.webp', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1750842523/szlgim5nnjeig9mgjza1.webp', 'typical drama', TO_DATE('2004-12-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'India', 'Bangla', '0');

-- ----------------------------
-- Table structure for MOVIE_AWARD
-- ----------------------------
DROP TABLE "MYMOVIES"."MOVIE_AWARD";
CREATE TABLE "MYMOVIES"."MOVIE_AWARD" (
  "MOVIEID" NUMBER VISIBLE,
  "AWARDID" NUMBER VISIBLE,
  "RECIEVEDATE" NUMBER(4,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MOVIE_AWARD
-- ----------------------------
INSERT INTO "MYMOVIES"."MOVIE_AWARD" VALUES ('100124', '1002', '2020');
INSERT INTO "MYMOVIES"."MOVIE_AWARD" VALUES ('100107', '1002', '2019');
INSERT INTO "MYMOVIES"."MOVIE_AWARD" VALUES ('100107', '1003', '2019');
INSERT INTO "MYMOVIES"."MOVIE_AWARD" VALUES ('100067', '1002', '2020');
INSERT INTO "MYMOVIES"."MOVIE_AWARD" VALUES ('100101', '1007', '2009');
INSERT INTO "MYMOVIES"."MOVIE_AWARD" VALUES ('100101', '1001', '2009');
INSERT INTO "MYMOVIES"."MOVIE_AWARD" VALUES ('100101', '1001', '2010');

-- ----------------------------
-- Table structure for MOVIE_CELEB
-- ----------------------------
DROP TABLE "MYMOVIES"."MOVIE_CELEB";
CREATE TABLE "MYMOVIES"."MOVIE_CELEB" (
  "MOVIEID" NUMBER VISIBLE,
  "CELEBID" NUMBER VISIBLE,
  "CELEBTYPE" VARCHAR2(10 BYTE) VISIBLE,
  "ROLE" VARCHAR2(30 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MOVIE_CELEB
-- ----------------------------
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100105', '100146', 'Actor', 'Michael Corleone');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100069', '100116', 'Actor', 'Mark Donald / Don');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100069', '100117', 'Actor', 'Roma Bhagat');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100113', '100146', 'Actor', 'Michael Corleone');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100069', '100118', 'Actor', 'Vardaan Makhija');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100105', '100145', 'Actor', 'Don Vito Corleone');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100105', '100147', 'Actor', 'Sonny Corleone');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100105', '100148', 'Actor', 'Tom Hagen');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100105', '100149', 'Actor', 'Kay Adams');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100105', '100144', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100106', '100116', 'Actor', 'Raj Malhotra');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100106', '100173', 'Actor', 'Simran Singh');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100106', '100174', 'Actor', 'Chaudhry Baldev Singh');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100106', '100176', 'Actor', 'Dharamvir Malhotra');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100106', '100172', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100115', '100083', 'Actor', 'Abhishek');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100115', '100095', 'Actor', 'Madhurima');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100115', '100092', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100108', '100187', 'Actor', 'Phunsukh Wangdu');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100108', '100188', 'Actor', 'Farhan Qureshi');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100108', '100189', 'Actor', 'Raju Rastogi');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100108', '100190', 'Actor', 'Pia');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100108', '100118', 'Actor', 'Virus');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100108', '100191', 'Actor', 'Chatur');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100108', '100186', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100109', '100087', 'Actor', 'Wade Wilson / Deadpool');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100109', '100141', 'Actor', 'Cable');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100109', '100088', 'Actor', 'Vanessa');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100109', '100142', 'Actor', 'Firefist');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100109', '100090', 'Actor', 'Dopinder');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100111', '100157', 'Actor', 'Miles Morales (voice)');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100111', '100158', 'Actor', 'Peter B. Parker (voice)');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100111', '100159', 'Actor', 'Gwen Stacy (voice)');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100111', '100160', 'Actor', 'Uncle Aaron (voice)');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100111', '100161', 'Actor', 'Aunt May (voice)');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100111', '100156', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100112', '100193', 'Actor', 'Pawan Kumar');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100112', '100194', 'Actor', 'Munni');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100112', '100195', 'Actor', 'Chand Nawab');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100112', '100190', 'Actor', 'Rasika');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100112', '100196', 'Actor', 'Dayanand');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100112', '100192', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100069', '100121', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100113', '100148', 'Actor', 'Tom Hagen');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100113', '100149', 'Actor', 'Kay Adams');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100113', '100144', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100114', '100199', 'Actor', 'Barfi');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100114', '100117', 'Actor', 'Jhilmil Chatterjee');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100114', '100200', 'Actor', 'Shruti Ghosh Sengupta');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100114', '100201', 'Actor', 'Ranjit Sengupta');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100114', '100094', 'Actor', 'Durjoy Chatterjee');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100114', '100101', 'Actor', 'Shruti''s mother');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100114', '100198', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100116', '100093', 'Actor', 'Rahul Majumder');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100116', '100095', 'Actor', 'Anuradha');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100116', '100086', 'Actor', 'Biswnath Majumder');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100116', '100205', 'Actor', 'Sonyia');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100116', '100204', 'Actor', ' ');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100116', '100206', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100117', '100093', 'Actor', 'Rahul');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100117', '100095', 'Actor', 'Nandini');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100117', '100096', 'Actor', 'Govardhan');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100117', '100208', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100118', '100083', 'Actor', 'Abir');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100118', '100209', 'Actor', 'Puja Sen');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100117', '100083', 'Actor', 'Shibu');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100117', '100086', 'Actor', 'Naxalite');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100118', '100086', 'Actor', ' ');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100118', '100097', 'Actor', '  ');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100118', '100208', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100119', '100211', 'Actor', 'Ed Warren');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100119', '100212', 'Actor', 'Lorraine Warren');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100119', '100213', 'Actor', 'Carolyn Perron');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100119', '100214', 'Actor', 'Roger Perron');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100119', '100215', 'Actor', 'Cindy Perron');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100119', '100210', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100120', '100216', 'Actor', 'Dolores');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100120', '100217', 'Actor', 'Johnny Venere');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100120', '100218', 'Actor', 'Oleg');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100120', '100219', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100120', '100167', 'Actor', 'Tony Lip');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100120', '100160', 'Actor', 'Dr. Don Shirley');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100122', '100222', 'Actor', 'Balbir Singh');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100122', '100223', 'Actor', 'Abrar Haque');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100122', '100224', 'Actor', 'Zoya Riaz');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100122', '100225', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100124', '100243', 'Actor', 'Lady Jessica Atreides');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100122', '100199', 'Actor', 'Ranvijay Balbir Singh');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100122', '100221', 'Actor', 'Geetanjali Singh');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100124', '100244', 'Actor', 'Duke Leto Atreides');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100124', '100245', 'Actor', 'Duncan Idaho');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100124', '100141', 'Actor', 'Gurney Halleck');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100124', '100241', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100124', '100242', 'Actor', 'Paul Atreides');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100123', '100227', 'Actor', 'Ishri Kaur');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100123', '100228', 'Actor', 'Gurudev Singh');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100123', '100114', 'Actor', 'Army Officer');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100123', '100229', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100163', '100092', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100123', '100121', 'Actor', 'Milkha Singh');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100123', '100226', 'Actor', 'Biro');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100110', '100181', 'Actor', 'Neo');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100110', '100182', 'Actor', 'Morpheus');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100163', '100093', 'Actor', 'am');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100163', '100095', 'Actor', 'heroine');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100110', '100183', 'Actor', 'Trinity');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100110', '100184', 'Actor', 'Agent Smith');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100110', '100185', 'Actor', 'Oracle');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100110', '100261', 'Actor', 'Cameo');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100110', '100180', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100066', '100099', 'Actor', 'Ananda Kar');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100066', '100095', 'Actor', 'Meghna');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100066', '100100', 'Actor', 'Dr. Chittaranjan Basu');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100066', '100101', 'Actor', 'Niharika Basu');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100066', '100102', 'Actor', 'Dhomoni Ghosh');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100066', '100103', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100068', '100110', 'Actor', 'Lucky');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100068', '100111', 'Actor', 'Bhavna');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100068', '100112', 'Actor', 'Ram');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100068', '100113', 'Actor', 'Madhav Shiva Reddy');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100068', '100114', 'Actor', 'Bheem Prakash');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100068', '100115', 'Actor', 'Kill Bill Pandey');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100068', '100109', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100070', '100116', 'Actor', 'Mohan Bhargav');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100070', '100122', 'Actor', 'Gita');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100070', '100123', 'Actor', 'Kaveri Amma');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100070', '100124', 'Actor', 'Nivaran Dayal Shrivastav');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100070', '100125', 'Actor', 'Mela Ram');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100070', '100126', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100121', '100152', 'Actor', 'Tyler Durden');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100121', '100151', 'Actor', 'Narrator');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100121', '100153', 'Actor', 'Marla SInger');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100121', '100154', 'Actor', 'Angel Face');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100121', '100155', 'Actor', 'Ricky');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100121', '100150', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100065', '100095', 'Actor', 'Rani');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100065', '100096', 'Actor', 'Nepal Das');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100065', '100098', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100107', '100202', 'Actor', 'Cooper');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100107', '100020', 'Actor', 'Professor Brand');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100065', '100093', 'Actor', 'Abhi');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100065', '100094', 'Actor', 'Dibakar');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100107', '100024', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100067', '100104', 'Actor', 'Rocky');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100067', '100105', 'Actor', 'Reena');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100067', '100106', 'Actor', 'Garuda');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100067', '100107', 'Actor', 'Anand Ingalagi');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100067', '100108', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100102', '100081', 'Actor', 'Bane');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100102', '100082', 'Actor', 'Miranda');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100102', '100023', 'Actor', 'Mr. Fox');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100102', '100025', 'Actor', 'Gordon');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100102', '100024', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100103', '100087', 'Actor', 'Wade Wilson / DeadPool');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100103', '100088', 'Actor', 'Vanessa');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100103', '100089', 'Actor', 'Ajax');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100103', '100090', 'Actor', 'Dopinder');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100103', '100091', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100104', '100083', 'Actor', 'Abir');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100104', '100084', 'Actor', 'Nandini Roy');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100104', '100085', 'Actor', 'Neelkanta Roy');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100104', '100092', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100101', '100019', 'Actor', 'Harvey Dent');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100101', '100020', 'Actor', 'Alfred');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100101', '100021', 'Actor', 'Rachel');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100101', '100024', 'Director', 'None');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100101', '100023', 'Actor', 'Mr. Fox');
INSERT INTO "MYMOVIES"."MOVIE_CELEB" VALUES ('100101', '100018', 'Actor', 'Joker');

-- ----------------------------
-- Table structure for MOVIE_GENRE
-- ----------------------------
DROP TABLE "MYMOVIES"."MOVIE_GENRE";
CREATE TABLE "MYMOVIES"."MOVIE_GENRE" (
  "MOVIEID" NUMBER VISIBLE,
  "GENREID" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MOVIE_GENRE
-- ----------------------------
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100069', '1008');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100069', '1004');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100069', '1001');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100069', '1002');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100105', '1008');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100105', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100106', '1003');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100106', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100106', '1006');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100115', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100115', '1003');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100115', '1006');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100108', '1003');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100108', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100109', '1001');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100109', '1003');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100109', '1002');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100181', '1003');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100111', '1001');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100111', '1002');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100111', '1011');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100111', '1021');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100112', '1003');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100112', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100112', '1001');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100181', '1011');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100113', '1008');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100113', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100114', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100114', '1003');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100114', '1006');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100116', '1006');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100116', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100116', '1003');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100117', '1002');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100118', '1001');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100118', '1003');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100117', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100117', '1006');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100118', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100119', '1005');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100119', '1004');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100120', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100120', '1022');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100122', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100124', '1010');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100124', '1002');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100122', '1001');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100122', '1008');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100124', '1001');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100124', '1021');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100163', '1011');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100123', '1022');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100123', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100110', '1001');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100163', '1003');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100163', '1006');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100110', '1021');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100066', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100068', '1001');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100068', '1002');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100068', '1003');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100070', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100121', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100065', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100065', '1001');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100065', '1003');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100107', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100107', '1021');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100067', '1001');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100102', '1001');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100102', '1004');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100102', '1007');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100102', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100103', '1001');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100103', '1002');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100103', '1003');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100103', '1007');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100104', '1009');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100104', '1006');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100107', '1002');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100067', '1008');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100067', '1004');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100101', '1004');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100101', '1001');
INSERT INTO "MYMOVIES"."MOVIE_GENRE" VALUES ('100101', '1007');

-- ----------------------------
-- Table structure for USERS
-- ----------------------------
DROP TABLE "MYMOVIES"."USERS";
CREATE TABLE "MYMOVIES"."USERS" (
  "ID" NUMBER VISIBLE NOT NULL,
  "USERNAME" VARCHAR2(15 BYTE) VISIBLE NOT NULL,
  "EMAIL" VARCHAR2(30 BYTE) VISIBLE NOT NULL,
  "BIO" VARCHAR2(100 BYTE) VISIBLE,
  "AVATAR" VARCHAR2(100 BYTE) VISIBLE,
  "PASSWORD" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "CREATIONDATE" DATE VISIBLE DEFAULT SYSDATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USERS
-- ----------------------------
INSERT INTO "MYMOVIES"."USERS" VALUES ('1013', 'Hamburger', 'ham@burger.com', 'Finger lickin good', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747902342/zt3h0hw2ksa6vpuh19ln.jpg', 'lettuce', TO_DATE('2025-05-22 14:25:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1014', 'Romen', 'romen@pradhan.com', 'I m a tuition lord', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747902556/ktizdqxvuirpuo0tqxam.jpg', 'yo', TO_DATE('2025-05-22 14:29:16', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1181', 'a', 'a@a.com', 'a', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749464163/hefx5taydkqv8h7xa4ri.webp', '$2b$06$4i7dUSOJxLCDbb64Q3a9u.TUw7B5I0C2K.S7xHYjnpb0SQmOAzZyS', TO_DATE('2025-06-09 16:16:02', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1241', 'Romen Prodhan', 'rp@boss.com', 'I am the chief.', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1750501088/bbf4ic9rhzrwkl9e9ecp.webp', '$2b$06$ARmA3r04.GV0kOMruDh6WedpH7nOqiU3CbZE7f4GbD5x/uxz0Dz3i', TO_DATE('2025-06-21 16:18:09', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1001', 'jerry', 'jerry@mouse.com', 'chases tom', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747900553/yumrjh3svbiwk77nsan4.jpg', 'pitbull', TO_DATE('2025-05-22 13:55:52', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1002', 'jerry2', 'jerry2@mouse.com', 'chases tom', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747900616/jw6lw8xebi7z2zypxjjy.jpg', 'pitbull', TO_DATE('2025-05-22 13:56:56', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1043', 'Swapno3', 'Swapnoemail3', 'This is testing my patience3', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747933912/hvdnnhtyg01s6ohpfxl0.jpg', '$2b$06$Ng2Z43HQQ55zgm7NQtD5T.Jl7lTJHdCDNqjQ91QGeFa.Ey49ku8Qu', TO_DATE('2025-05-22 23:11:53', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1044', 'Swapno4', 'Swapnoemail4', 'This is testing my patience4', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747933935/wv4ociypvndlsslhphym.jpg', '$2b$06$xIkdjG6JeAYrXOOx0kywPuvAGBY4bxaY4vAqf7rAzuAaL3h3iZvK6', TO_DATE('2025-05-22 23:12:16', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1045', 'horse', 'wolframalpha', 'hehehehhe', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747934790/btdxco1tjfhcmasu3ydc.jpg', '$2b$06$n8vTban9usHjDMaYQmCSmOE4IcKu5HOohcLB9i2CCSnrzf3UPdc3q', TO_DATE('2025-05-22 23:26:31', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1141', 'yodh', 'yodj@jndgd.com', 'srfaweoirf', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748457334/uhi9gkxpgexgbaixqbko.png', '$2b$06$SIxSPL5HKNM3sE7ni3jBFuWFResfTTf.zc3iLQJYspfpSiJNT4m7C', TO_DATE('2025-05-29 00:35:34', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1221', 'Tanim', 'tan@cot.com', 'Hey I m an Engineer.', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749999797/c99xjlbbksmbkl4vhkht.webp', '$2b$06$lgUJA9ndKT1gJeUDmQUp7u1Z.ojUFKM0nSS1iLIDgv./y1kts7QWC', TO_DATE('2025-06-15 21:03:18', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1041', 'Swapno', 'Swapnoemail', 'This is testing my patience', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747933578/l5spwqzsxmufh2bwphbw.jpg', '$2b$06$Yz2ZUha6CYk8L600GJcRvOURGHRrm4i.938ANON0bzPlOZfqj9iBu', TO_DATE('2025-05-22 23:06:19', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1042', 'Swapno2', 'Swapnoemail2', 'This is testing my patience2', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747933831/s0vcu1h1yuedsq2t9kq5.jpg', '$2b$06$xMnS.TcuKhYznMmZy1wjvumyOQaYsLtQ9UPPCy04GMt6.NhUBMTg2', TO_DATE('2025-05-22 23:10:32', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1282', 't', 't@t.com', 't', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1753845826/ycz75cgedrhl2jdegwfg.webp', '$2b$06$gxjnatz9eS442Fm0b67HG.EgPa2hcMwJkw0c6Q1o7PNKPrTcVHRNW', TO_DATE('2025-07-30 09:23:46', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1061', 'man', 'man@mankind.com', 'I am a man.', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748012379/o13fbvjbklq4fj7duz6i.jpg', '$2b$06$hzEw6APXGFWTRtGv.fYlO.BOM79p6AXAPxC3hO7.9FGa6ORuB063S', TO_DATE('2025-05-23 20:59:40', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1062', 'undefined', 'undefined', 'undefined', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748029732/tzuqlxujekmwd0kckkde.jpg', '$2b$06$V/xVRu.IHz8s.h1lCnXghO8iW58I0fsr5nGC5ybfvSFKQXOChNrs6', TO_DATE('2025-05-24 01:48:53', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1081', 'ash', 'ash@king.com', 'baarish', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748033409/xsofxks2wmtnmiuamb5q.jpg', '$2b$06$jMwokSgry1WEQkQcRioja.5AvP9AaRjrmPz4vN91dQVXwLQxQehDO', TO_DATE('2025-05-24 02:50:10', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1262', 'Kawsar', 'kaw@sir.com', 'I am a bad boy.', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1750841008/mawu3q11dgzkjzifmsoz.webp', '$2b$06$gDuWfTceSs3Xrbx2sG6/neSvsavPngBNLpPlAB6ZBtDM5T.VoVVhG', TO_DATE('2025-06-25 14:43:28', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1281', 'Yo', 'Yo@yoyo.com', 'yo', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1753809674/dlwkpyrsmwmbfsmciwll.webp', '$2b$06$9ikdP4sl1Mqy/z5uWNQQF.JWLA70mEO7ytyIcLMs2rw7S8NjEIbkm', TO_DATE('2025-07-29 23:21:13', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1283', 'r', 'r@r.com', 'r', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1753866936/ega1hgfvofy22q1sfq5v.webp', '$2b$06$7dOoQKiTRJTFlsiZ/RqRC.Bc2qbLP0YfxVA2rUtDwKZyWhg9V3e9O', TO_DATE('2025-07-30 15:15:37', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1121', 'honda', 'hon@npo.com', NULL, 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748171077/cnwm6qesbbumzyq9fwgl.png', '$2b$06$UQifn3jV5N.UYvMz.HziKOqHit3V85gwCBmE4C1p4dNFDSpJUDPhm', TO_DATE('2025-05-25 17:04:37', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1201', 'newbie', 'newbie@noob.com', 'I am a noob bot', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1749670327/rk0zjdqodwzw4oeyh1xa.webp', '$2b$06$E5B4g6EvirrdOLiXeUWUpOpyKntWvwMckcm3Jv.BvrnFiOpb5xg9y', TO_DATE('2025-06-12 01:32:08', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1015', 'abc', 'abc@bca.com', 'abcabc', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747919050/vnnmpqukscmlzztsjtbw.jpg', 'alphabet', TO_DATE('2025-05-22 19:04:10', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1016', 'hash', 'hash@hasha.com', 'this is to test hashing of password', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747919702/v8tbocuwf0ktr7fglvau.jpg', 'tango15charlie', TO_DATE('2025-05-22 19:15:02', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1017', 'hash2', 'hash2@hasha.com', 'this is to test hashing of password test 2', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747919770/vqngvdje9ignneblr5l6.jpg', 'tango15charlie', TO_DATE('2025-05-22 19:16:10', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1018', 'hash3', 'hash3@hasha.com', 'this is to test hashing of password test 3', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747919825/vgrmkxaesqxoike4nles.jpg', 'tango15charlie', TO_DATE('2025-05-22 19:17:05', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1019', 'hash4', 'hash4@hasha.com', 'this is to test hashing of password test 4', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747919906/zeqmx19tp3b3oskoqmqg.jpg', 'tango15charlie', TO_DATE('2025-05-22 19:18:26', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1020', 'hash5', 'hash5@hasha.com', 'this is to test hashing of password test 5', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747920053/ivtp0xwiqxdlene7q7gp.jpg', 'tango15charlie', TO_DATE('2025-05-22 19:20:53', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1021', 'hash6', 'hash6@hasha.com', 'this is to test hashing of password test 6', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747920285/mitx1a5owjuhl3a5mx62.jpg', 'tango15charlie', TO_DATE('2025-05-22 19:24:45', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1022', 'hash7', 'hash7@hasha.com', 'this is to test hashing of password test 7', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747920336/nn6nw6own0wfagm8ivia.jpg', 'tango15charlie', TO_DATE('2025-05-22 19:25:36', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1023', 'hash8', 'hash8@hasha.com', 'this is to test hashing of password test 8', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747920518/hphkugfiy3q9pwrdkatu.jpg', 'tango15charlie', TO_DATE('2025-05-22 19:28:38', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1024', 'hash9', 'hash9@hasha.com', 'this is to test hashing of password test 9', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1747920878/vfcqhxwbgnuldwhprceq.jpg', '$2b$06$SKuflzxZHCuaHXhO6G2/z.9Jo3EEnlVQIKM7z/7o1UYncdzEd1gji', TO_DATE('2025-05-22 19:34:38', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1101', 'alexandar', 'alex@gander.com', 'Win the world', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748127219/kos8w5efhxbcpeuayem6.png', '$2b$06$c4yLHotpv1noNh3U9p0hweT2onkgGTDi5w/L01b/Hpxfn8ua51IdC', TO_DATE('2025-05-25 04:53:40', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1102', 'kjsyfnrlrpyvmsj', 'sth@sth.com', 'sthsth', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748128112/bddupcsoczkbcesmosq0.png', '$2b$06$JDmxKR8EXes5wa381gUyy.3SV8AhRr4QZp9pObruG7PapOGQP3oOK', TO_DATE('2025-05-25 05:08:32', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1105', 'hdhsklopertinmj', 'yes@yes.com', 'yes', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748128267/y8nidw4yenqedaqkv8e4.png', '$2b$06$HevLo9uY.uhf4eBsBC.tC.w.YQ6BR3QCQpXdmEV24K7SYDvSbzXq2', TO_DATE('2025-05-25 05:11:07', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1116', 'testy', 'yes3@yes.com', NULL, 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748166893/vdpew8rx0tmm17ywrqkv.png', '$2b$06$h3t0/by1nrErjzExcNH.V.XAM0UwCeHcXq7lpa34qlLntWma8qIAG', TO_DATE('2025-05-25 15:54:53', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1161', 'Nojo', 'nojo@vojo.com', 'I am a Nojo Vojo', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1748523174/kpkxlvg6ng4cgawmqpqi.webp', '$2b$06$LJkswzLoXz7uuzl374LXPOtkwGo4u5VUmox6QnDXPmukNXlefafi2', TO_DATE('2025-05-29 18:52:55', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USERS" VALUES ('1261', 'Om', 'om1@gmail.com', 'Om ', 'http://res.cloudinary.com/dvuzfbwun/image/upload/v1750788932/j9uao1dlh5v47dvo5pr3.webp', '$2b$06$kSCJweI3TxBnStqW9f.EV.hOM.zmcUt8Bp7L/EyGOHi.ROlUE.Q4.', TO_DATE('2025-06-25 00:15:32', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for USER_REVIEW
-- ----------------------------
DROP TABLE "MYMOVIES"."USER_REVIEW";
CREATE TABLE "MYMOVIES"."USER_REVIEW" (
  "MOVIEID" NUMBER VISIBLE,
  "USERID" NUMBER VISIBLE,
  "HEADING" VARCHAR2(500 BYTE) VISIBLE,
  "CONTENT" VARCHAR2(4000 BYTE) VISIBLE,
  "RATING" NUMBER VISIBLE NOT NULL,
  "ADDEDDATE" DATE VISIBLE DEFAULT SYSDATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_REVIEW
-- ----------------------------
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100124', '1061', 'klndgian', 'kldnglangid', '8', TO_DATE('2025-06-21 16:12:57', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100107', '1061', ' ', ' ', '10', TO_DATE('2025-06-21 16:14:39', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100115', '1061', 'faltu movie', 'Waste of time', '1', TO_DATE('2025-06-21 16:15:23', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100110', '1241', ' ', ' ', '5', TO_DATE('2025-06-21 16:18:34', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100109', '1041', ' ', ' ', '1', TO_DATE('2025-06-26 20:20:17', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100107', '1181', 'Damnnnnnnnnnnnn!!!!!', 'Xosssssssssssssssssssss', '10', TO_DATE('2025-07-29 23:09:23', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100124', '1221', 'What a Fine Shyt!', 'A very family movie. Must watch', '9', TO_DATE('2025-06-15 21:04:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100124', '1041', 'Overhyped!', 'Not a definitely good one. Wak thu.', '5', TO_DATE('2025-06-15 21:05:27', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100069', '1041', ' ', ' ', '7', TO_DATE('2025-06-15 21:08:28', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100124', '1181', 'BLOCKBUSTER!!!', 'What a cult classic super duper hit!!!!!!!!!!!!', '10', TO_DATE('2025-06-25 13:57:14', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100115', '1181', 'Hell Yeaaaaaaaaaaaaaah!!!!', 'Shiray Shiray rokto, Dev da er Vokto', '10', TO_DATE('2025-06-15 21:18:19', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100118', '1041', ' ', ' ', '10', TO_DATE('2025-07-09 14:43:09', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100109', '1282', ' ', ' ', '9', TO_DATE('2025-07-30 09:24:16', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100110', '1282', ' ', ' ', '8', TO_DATE('2025-07-30 09:24:37', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100111', '1282', ' ', ' ', '8', TO_DATE('2025-07-30 09:25:07', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100122', '1282', ' ', ' ', '10', TO_DATE('2025-07-30 09:25:27', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100119', '1282', ' ', ' ', '9', TO_DATE('2025-07-30 09:28:10', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100067', '1181', 'Rockyyyyyy', 'Great!', '9', TO_DATE('2025-06-13 00:20:13', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100109', '1262', 'heavy.', 'osthirrrrr!!!!!!!!!!!!!!!!! Maaaal movie!!!!!!!!!', '10', TO_DATE('2025-06-25 14:44:43', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100122', '1041', 'awesome', 'good movie', '5', TO_DATE('2025-06-25 15:06:18', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100118', '1181', ' ', ' ', '1', TO_DATE('2025-07-09 14:42:30', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100114', '1181', 'Nice Movie', 'Anurag daaa big fan', '8', TO_DATE('2025-07-29 22:55:23', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100119', '1181', ' ', ' ', '5', TO_DATE('2025-07-29 23:09:39', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100109', '1161', ' ', ' ', '8', TO_DATE('2025-07-29 23:18:43', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100066', '1161', ' ', ' ', '2', TO_DATE('2025-07-29 23:18:55', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100107', '1161', ' ', ' ', '8', TO_DATE('2025-07-29 23:19:06', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100113', '1161', ' ', ' ', '7', TO_DATE('2025-07-29 23:19:18', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100109', '1281', 'Good Film', 'Must watch with family after muting', '8', TO_DATE('2025-07-29 23:21:57', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100122', '1281', ' ', ' ', '9', TO_DATE('2025-07-29 23:22:18', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100110', '1281', ' ', ' ', '5', TO_DATE('2025-07-29 23:22:58', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100111', '1281', ' ', ' ', '10', TO_DATE('2025-07-29 23:25:09', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100119', '1281', ' ', ' ', '10', TO_DATE('2025-07-29 23:25:48', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100109', '1283', ' ', ' ', '9', TO_DATE('2025-07-30 15:15:57', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100110', '1283', ' ', ' ', '9', TO_DATE('2025-07-30 15:16:14', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100111', '1283', ' ', ' ', '8', TO_DATE('2025-07-30 15:16:29', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100103', '1283', ' ', ' ', '8', TO_DATE('2025-07-30 15:16:56', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100119', '1283', ' ', ' ', '2', TO_DATE('2025-07-30 15:17:18', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100111', '1181', 'Spidy!!', 'great animation! My boy, Miles Morales came along a long way. Really great storyline and really enjoyable. A must watch for all the spidy fans', '6', TO_DATE('2025-06-14 15:17:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100120', '1181', ' ', ' ', '7', TO_DATE('2025-06-15 18:04:05', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100109', '1201', ' ', ' ', '10', TO_DATE('2025-06-12 01:32:26', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100067', '1201', ' ', ' ', '8', TO_DATE('2025-06-12 03:31:26', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100067', '1041', 'Damn!!!!!!!', 'Superstar Yash has done it again!!!!!', '10', TO_DATE('2025-06-12 23:29:59', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100067', '1061', ' ', ' ', '6', TO_DATE('2025-06-12 04:20:08', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100102', '1181', ' ', ' ', '10', TO_DATE('2025-06-12 23:09:45', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100067', '1161', 'Average.', 'Not really worth the hype.', '5', TO_DATE('2025-06-12 23:30:48', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100110', '1181', 'The Boss Keanu has done it again!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 'The first 45 minutes of this film had me very excited. It is so rare that I will go to the theater and be presented with something which is both original and intelligent. It managed to hang in there throughout, though the ending was too formulaic. In addition, the voice-over at the very end reminded me of the final scene in Saving Private Ryan. It almost ruins a fantastic film.

The only other objection I can come up with is that the you must know, you must be type philosophy being handed out was just a tad hokey. I must pleasantly admit though, since I don''t get to admit this very often, that The Matrix is worth seeing despite these things.

The visuals are extremely impressive, particularly the "white room," the baby harvester, the training scene with the "red woman," the Reeves interrogation scene... I have to agree with some of the previous comments that the plot idea won''t seem overly original to a fan of Philip K Dick, but then what is original after you''ve read him? The Matrix has more original things to say than two months worth of standard Hollywood fare. I have a great deal of respect for a film which will have someone say "they''re turning humans into this" and hold up a battery. A plot which looks at man as machine will get a thumbs up from me just for trying.

I feel some hope for the future of movie-making in America to be able to recommend this film.', '7', TO_DATE('2025-06-13 00:10:55', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100112', '1181', ' ', ' ', '8', TO_DATE('2025-06-13 00:27:41', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100102', '1061', 'Meh! Average!!', 'Seriously guys, what did you find in this movie? Greatly overrated. This clearly is not the most goated Christopher Nolan film ever.', '5', TO_DATE('2025-06-14 15:20:50', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100122', '1181', ' ', ' ', '8', TO_DATE('2025-06-15 04:23:41', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100103', '1041', ' ', ' ', '1', TO_DATE('2025-07-31 21:38:30', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100068', '1041', ' ', ' ', '7', TO_DATE('2025-07-31 21:38:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."USER_REVIEW" VALUES ('100124', '1261', 'Sheiii', 'What a movie!', '10', TO_DATE('2025-06-25 00:16:20', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for WATCHHISTORY
-- ----------------------------
DROP TABLE "MYMOVIES"."WATCHHISTORY";
CREATE TABLE "MYMOVIES"."WATCHHISTORY" (
  "MOVIEID" NUMBER VISIBLE,
  "USERID" NUMBER VISIBLE,
  "ADDEDDATE" DATE VISIBLE DEFAULT SYSDATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of WATCHHISTORY
-- ----------------------------
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100124', '1061', TO_DATE('2025-06-21 16:13:54', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100109', '1061', TO_DATE('2025-06-21 16:13:13', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100107', '1061', TO_DATE('2025-06-21 16:14:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100115', '1061', TO_DATE('2025-06-21 16:15:05', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100110', '1241', TO_DATE('2025-06-21 16:18:26', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100109', '1041', TO_DATE('2025-07-09 14:43:26', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100122', '1181', TO_DATE('2025-07-09 01:06:05', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100124', '1221', TO_DATE('2025-06-15 21:03:24', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100102', '1221', TO_DATE('2025-06-15 21:04:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100124', '1041', TO_DATE('2025-07-09 14:44:50', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100069', '1041', TO_DATE('2025-06-25 15:04:24', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100124', '1181', TO_DATE('2025-07-30 14:07:45', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100115', '1181', TO_DATE('2025-06-15 21:18:23', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100101', '1041', TO_DATE('2025-07-09 14:44:05', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100119', '1282', TO_DATE('2025-07-30 09:28:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100111', '1181', TO_DATE('2025-07-30 14:07:31', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100112', '1181', TO_DATE('2025-06-15 18:03:15', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100102', '1181', TO_DATE('2025-06-15 21:23:15', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100110', '1181', TO_DATE('2025-06-15 21:23:22', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100067', '1181', TO_DATE('2025-07-08 13:53:11', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100101', '1181', TO_DATE('2025-06-11 04:27:20', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100120', '1181', TO_DATE('2025-06-25 13:55:29', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100109', '1181', TO_DATE('2025-07-08 21:59:31', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100108', '1181', TO_DATE('2025-06-11 13:26:44', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100107', '1181', TO_DATE('2025-07-29 23:09:06', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100106', '1181', TO_DATE('2025-06-14 12:39:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100069', '1181', TO_DATE('2025-06-25 14:03:58', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100103', '1181', TO_DATE('2025-06-25 14:58:56', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100105', '1181', TO_DATE('2025-06-11 17:55:27', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100109', '1161', TO_DATE('2025-07-29 23:18:36', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100108', '1041', TO_DATE('2025-06-25 14:39:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100067', '1041', TO_DATE('2025-06-25 15:04:02', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100111', '1041', TO_DATE('2025-08-01 10:26:38', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100102', '1041', TO_DATE('2025-06-11 17:59:47', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100110', '1041', TO_DATE('2025-06-25 14:37:46', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100117', '1041', TO_DATE('2025-06-11 18:00:29', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100067', '1061', TO_DATE('2025-06-21 16:10:59', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100123', '1181', TO_DATE('2025-06-15 02:26:18', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100102', '1262', TO_DATE('2025-06-25 14:43:37', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100124', '1262', TO_DATE('2025-06-25 14:43:47', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100109', '1262', TO_DATE('2025-06-25 14:44:11', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100065', '1181', TO_DATE('2025-06-25 14:58:44', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100120', '1041', TO_DATE('2025-06-26 20:19:40', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100122', '1041', TO_DATE('2025-06-25 15:06:21', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100118', '1181', TO_DATE('2025-07-09 14:42:24', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100118', '1041', TO_DATE('2025-07-09 14:43:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100107', '1041', TO_DATE('2025-06-25 15:13:52', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100114', '1181', TO_DATE('2025-07-29 22:54:57', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100066', '1161', TO_DATE('2025-07-29 23:18:47', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100107', '1161', TO_DATE('2025-07-29 23:19:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100113', '1161', TO_DATE('2025-07-29 23:19:11', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100119', '1161', TO_DATE('2025-07-29 23:20:07', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100067', '1281', TO_DATE('2025-07-29 23:21:20', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100115', '1281', TO_DATE('2025-07-29 23:25:28', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100119', '1281', TO_DATE('2025-07-29 23:25:43', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100119', '1283', TO_DATE('2025-07-30 15:17:13', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100109', '1201', TO_DATE('2025-06-12 01:32:14', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100107', '1201', TO_DATE('2025-06-12 01:34:04', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100111', '1201', TO_DATE('2025-06-12 01:49:25', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100106', '1201', TO_DATE('2025-06-12 01:51:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100067', '1201', TO_DATE('2025-06-12 03:31:17', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100108', '1061', TO_DATE('2025-06-12 22:38:58', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100120', '1061', TO_DATE('2025-06-12 22:50:10', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100111', '1061', TO_DATE('2025-06-14 15:18:10', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100067', '1161', TO_DATE('2025-06-12 23:31:54', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100119', '1181', TO_DATE('2025-07-29 23:09:33', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100066', '1181', TO_DATE('2025-06-14 13:41:05', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100116', '1181', TO_DATE('2025-06-14 13:49:53', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100110', '1061', TO_DATE('2025-06-14 15:23:27', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100102', '1061', TO_DATE('2025-06-14 15:19:03', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100112', '1061', TO_DATE('2025-06-21 16:13:36', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100103', '1041', TO_DATE('2025-07-31 21:38:22', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100068', '1041', TO_DATE('2025-07-31 21:37:54', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100121', '1041', TO_DATE('2025-06-25 00:00:57', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100067', '1261', TO_DATE('2025-06-25 00:20:21', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100124', '1261', TO_DATE('2025-06-25 00:16:25', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHHISTORY" VALUES ('100120', '1261', TO_DATE('2025-06-25 00:20:33', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for WATCHLIST
-- ----------------------------
DROP TABLE "MYMOVIES"."WATCHLIST";
CREATE TABLE "MYMOVIES"."WATCHLIST" (
  "MOVIEID" NUMBER VISIBLE,
  "USERID" NUMBER VISIBLE,
  "ADDEDDATE" DATE VISIBLE DEFAULT SYSDATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of WATCHLIST
-- ----------------------------
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100124', '1061', TO_DATE('2025-06-21 16:13:21', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100110', '1061', TO_DATE('2025-06-21 16:13:26', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100102', '1061', TO_DATE('2025-06-21 16:13:25', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100108', '1061', TO_DATE('2025-06-21 16:16:16', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100067', '1241', TO_DATE('2025-06-21 16:18:19', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100120', '1041', TO_DATE('2025-06-26 20:19:45', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100124', '1221', TO_DATE('2025-06-15 21:03:27', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100109', '1221', TO_DATE('2025-06-15 21:04:10', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100111', '1221', TO_DATE('2025-06-15 21:04:08', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100124', '1181', TO_DATE('2025-06-15 21:19:50', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100123', '1041', TO_DATE('2025-06-25 15:04:38', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100120', '1283', TO_DATE('2025-07-30 15:19:20', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100106', '1181', TO_DATE('2025-06-11 17:55:50', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100067', '1283', TO_DATE('2025-07-30 15:19:17', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100120', '1161', TO_DATE('2025-06-11 17:56:27', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100101', '1201', TO_DATE('2025-06-12 01:32:59', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100109', '1201', TO_DATE('2025-06-12 01:33:45', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100110', '1041', TO_DATE('2025-06-14 12:42:22', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100065', '1061', TO_DATE('2025-06-14 12:57:15', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100107', '1061', TO_DATE('2025-06-14 12:57:16', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100116', '1062', TO_DATE('2025-06-14 13:44:13', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100066', '1062', TO_DATE('2025-06-14 13:40:53', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100066', '1181', TO_DATE('2025-06-14 13:42:35', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100115', '1181', TO_DATE('2025-06-15 04:17:22', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100121', '1041', TO_DATE('2025-06-25 00:01:02', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100067', '1261', TO_DATE('2025-06-25 00:15:52', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100111', '1261', TO_DATE('2025-06-25 00:15:53', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100120', '1261', TO_DATE('2025-06-25 00:20:35', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MYMOVIES"."WATCHLIST" VALUES ('100067', '1181', TO_DATE('2025-07-30 13:59:17', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Sequence structure for AWARD_ID_SEQ
-- ----------------------------
DROP SEQUENCE "MYMOVIES"."AWARD_ID_SEQ";
CREATE SEQUENCE "MYMOVIES"."AWARD_ID_SEQ" MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for CELEB_ID_SEQ
-- ----------------------------
DROP SEQUENCE "MYMOVIES"."CELEB_ID_SEQ";
CREATE SEQUENCE "MYMOVIES"."CELEB_ID_SEQ" MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for GENRE_ID_SEQ
-- ----------------------------
DROP SEQUENCE "MYMOVIES"."GENRE_ID_SEQ";
CREATE SEQUENCE "MYMOVIES"."GENRE_ID_SEQ" MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for LANGUAGE_ID_SEQ
-- ----------------------------
DROP SEQUENCE "MYMOVIES"."LANGUAGE_ID_SEQ";
CREATE SEQUENCE "MYMOVIES"."LANGUAGE_ID_SEQ" MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for MOVIE_ID_SEQ
-- ----------------------------
DROP SEQUENCE "MYMOVIES"."MOVIE_ID_SEQ";
CREATE SEQUENCE "MYMOVIES"."MOVIE_ID_SEQ" MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for USERS_ID_SEQ
-- ----------------------------
DROP SEQUENCE "MYMOVIES"."USERS_ID_SEQ";
CREATE SEQUENCE "MYMOVIES"."USERS_ID_SEQ" MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Primary Key structure for table AWARD
-- ----------------------------
ALTER TABLE "MYMOVIES"."AWARD" ADD CONSTRAINT "AWARD_PK" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table AWARD
-- ----------------------------
ALTER TABLE "MYMOVIES"."AWARD" ADD CONSTRAINT "SYS_C007929" CHECK ("TITLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."AWARD" ADD CONSTRAINT "SYS_C007930" CHECK ("AWARDDESCRIPTION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."AWARD" ADD CONSTRAINT "SYS_C007931" CHECK ("AWARDRECIEVER" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."AWARD" ADD CONSTRAINT "SYS_C007932" CHECK (AwardReciever IN ('Actor','Director','Movie')) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table CELEB
-- ----------------------------
ALTER TABLE "MYMOVIES"."CELEB" ADD CONSTRAINT "CELEB_PK" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table CELEB
-- ----------------------------
ALTER TABLE "MYMOVIES"."CELEB" ADD CONSTRAINT "SYS_C007953" CHECK ("NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."CELEB" ADD CONSTRAINT "SYS_C007954" CHECK ("AVATAR" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."CELEB" ADD CONSTRAINT "SYS_C007955" CHECK ("COUNTRY" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."CELEB" ADD CONSTRAINT "SYS_C007973" CHECK ("GENDER" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."CELEB" ADD CONSTRAINT "SYS_C007974" CHECK (GENDER IN ('Male','Female')) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table CELEB_AWARD
-- ----------------------------
ALTER TABLE "MYMOVIES"."CELEB_AWARD" ADD CONSTRAINT "SYS_C007961" CHECK ("RECIEVEDATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table GENRE
-- ----------------------------
ALTER TABLE "MYMOVIES"."GENRE" ADD CONSTRAINT "GENRE_PK" PRIMARY KEY ("ID");

-- ----------------------------
-- Uniques structure for table GENRE
-- ----------------------------
ALTER TABLE "MYMOVIES"."GENRE" ADD CONSTRAINT "SYS_C007928" UNIQUE ("TITLE") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table GENRE
-- ----------------------------
ALTER TABLE "MYMOVIES"."GENRE" ADD CONSTRAINT "SYS_C007926" CHECK ("TITLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table LANGUAGE
-- ----------------------------
ALTER TABLE "MYMOVIES"."LANGUAGE" ADD CONSTRAINT "LANGUAGE_PK" PRIMARY KEY ("ID");

-- ----------------------------
-- Uniques structure for table LANGUAGE
-- ----------------------------
ALTER TABLE "MYMOVIES"."LANGUAGE" ADD CONSTRAINT "SYS_C007936" UNIQUE ("TITLE") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table LANGUAGE
-- ----------------------------
ALTER TABLE "MYMOVIES"."LANGUAGE" ADD CONSTRAINT "SYS_C007934" CHECK ("TITLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table MOVIE
-- ----------------------------
ALTER TABLE "MYMOVIES"."MOVIE" ADD CONSTRAINT "MOVIE_PK" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table MOVIE
-- ----------------------------
ALTER TABLE "MYMOVIES"."MOVIE" ADD CONSTRAINT "SYS_C007937" CHECK ("TITLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."MOVIE" ADD CONSTRAINT "SYS_C007938" CHECK ("DURATION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."MOVIE" ADD CONSTRAINT "SYS_C007939" CHECK ("COVERPHOTO" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."MOVIE" ADD CONSTRAINT "SYS_C007940" CHECK ("POSTER" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."MOVIE" ADD CONSTRAINT "SYS_C007941" CHECK ("DESCRIPTION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."MOVIE" ADD CONSTRAINT "SYS_C007942" CHECK ("RELEASEDATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."MOVIE" ADD CONSTRAINT "SYS_C007943" CHECK ("COUNTRY" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."MOVIE" ADD CONSTRAINT "SYS_C007944" CHECK ("LANGUAGE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table MOVIE_AWARD
-- ----------------------------
ALTER TABLE "MYMOVIES"."MOVIE_AWARD" ADD CONSTRAINT "SYS_C007950" CHECK ("RECIEVEDATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table MOVIE_CELEB
-- ----------------------------
ALTER TABLE "MYMOVIES"."MOVIE_CELEB" ADD CONSTRAINT "SYS_C007957" CHECK ("ROLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."MOVIE_CELEB" ADD CONSTRAINT "SYS_C007958" CHECK (CelebType IN ('Actor','Director')) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USERS
-- ----------------------------
ALTER TABLE "MYMOVIES"."USERS" ADD CONSTRAINT "USER_PK" PRIMARY KEY ("ID");

-- ----------------------------
-- Uniques structure for table USERS
-- ----------------------------
ALTER TABLE "MYMOVIES"."USERS" ADD CONSTRAINT "SYS_C007900" UNIQUE ("USERNAME") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."USERS" ADD CONSTRAINT "SYS_C007901" UNIQUE ("EMAIL") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table USERS
-- ----------------------------
ALTER TABLE "MYMOVIES"."USERS" ADD CONSTRAINT "SYS_C007896" CHECK ("USERNAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."USERS" ADD CONSTRAINT "SYS_C007897" CHECK ("EMAIL" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."USERS" ADD CONSTRAINT "SYS_C007898" CHECK ("PASSWORD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table USER_REVIEW
-- ----------------------------
ALTER TABLE "MYMOVIES"."USER_REVIEW" ADD CONSTRAINT "SYS_C008071" CHECK ("RATING" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table CELEB_AWARD
-- ----------------------------
ALTER TABLE "MYMOVIES"."CELEB_AWARD" ADD CONSTRAINT "CELEB_AWARD_CELEB_FK" FOREIGN KEY ("CELEBID") REFERENCES "MYMOVIES"."CELEB" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."CELEB_AWARD" ADD CONSTRAINT "CELEB_AWARD_FK" FOREIGN KEY ("AWARDID") REFERENCES "MYMOVIES"."AWARD" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."CELEB_AWARD" ADD CONSTRAINT "CELEB_AWARD_MOVIE_FK" FOREIGN KEY ("MOVIEID") REFERENCES "MYMOVIES"."MOVIE" ("ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table MOVIE
-- ----------------------------
ALTER TABLE "MYMOVIES"."MOVIE" ADD CONSTRAINT "LANGUAGE_FK" FOREIGN KEY ("LANGUAGE") REFERENCES "MYMOVIES"."LANGUAGE" ("TITLE") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table MOVIE_AWARD
-- ----------------------------
ALTER TABLE "MYMOVIES"."MOVIE_AWARD" ADD CONSTRAINT "MOVIE_AWARD_AWARD_FK" FOREIGN KEY ("AWARDID") REFERENCES "MYMOVIES"."AWARD" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."MOVIE_AWARD" ADD CONSTRAINT "MOVIE_AWARD_MOVIE_FK_CASCADE" FOREIGN KEY ("MOVIEID") REFERENCES "MYMOVIES"."MOVIE" ("ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table MOVIE_CELEB
-- ----------------------------
ALTER TABLE "MYMOVIES"."MOVIE_CELEB" ADD CONSTRAINT "CELEB_FK" FOREIGN KEY ("CELEBID") REFERENCES "MYMOVIES"."CELEB" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."MOVIE_CELEB" ADD CONSTRAINT "MOVIE_CELEB_MOVIE_FK" FOREIGN KEY ("MOVIEID") REFERENCES "MYMOVIES"."MOVIE" ("ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table MOVIE_GENRE
-- ----------------------------
ALTER TABLE "MYMOVIES"."MOVIE_GENRE" ADD CONSTRAINT "MOVIE_FK_CASCADE" FOREIGN KEY ("MOVIEID") REFERENCES "MYMOVIES"."MOVIE" ("ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."MOVIE_GENRE" ADD CONSTRAINT "MOVIE_GENRE_FK" FOREIGN KEY ("GENREID") REFERENCES "MYMOVIES"."GENRE" ("ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_REVIEW
-- ----------------------------
ALTER TABLE "MYMOVIES"."USER_REVIEW" ADD CONSTRAINT "USERREVIEW_MOVIE_FK" FOREIGN KEY ("MOVIEID") REFERENCES "MYMOVIES"."MOVIE" ("ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."USER_REVIEW" ADD CONSTRAINT "USERREVIEW_USER_FK" FOREIGN KEY ("USERID") REFERENCES "MYMOVIES"."USERS" ("ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table WATCHHISTORY
-- ----------------------------
ALTER TABLE "MYMOVIES"."WATCHHISTORY" ADD CONSTRAINT "WATCHLIST_MOVIE_FK" FOREIGN KEY ("MOVIEID") REFERENCES "MYMOVIES"."MOVIE" ("ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."WATCHHISTORY" ADD CONSTRAINT "WATCHLIST_USER_FK" FOREIGN KEY ("USERID") REFERENCES "MYMOVIES"."USERS" ("ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table WATCHLIST
-- ----------------------------
ALTER TABLE "MYMOVIES"."WATCHLIST" ADD CONSTRAINT "FAVOURITE_MOVIE_FK" FOREIGN KEY ("MOVIEID") REFERENCES "MYMOVIES"."MOVIE" ("ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MYMOVIES"."WATCHLIST" ADD CONSTRAINT "FAVOURITE_USER_FK" FOREIGN KEY ("USERID") REFERENCES "MYMOVIES"."USERS" ("ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
