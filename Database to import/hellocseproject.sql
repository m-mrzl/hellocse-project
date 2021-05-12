-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 12 mai 2021 à 14:55
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hellocseproject`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_11_082222_create_posts_table', 1),
(5, '2021_05_11_150823_add_cover_image_to_profiles', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `cover_image`) VALUES
(2, 'Beyonce Knowles', 'Beyoncé Giselle Knowles-Carter (/biːˈjɒnseɪ/ bee-YON-say; née Knowles; born September 4, 1981)[6] is an American singer and actress. Born and raised in Houston, Texas, Beyoncé performed in various singing and dancing competitions as a child. She rose to fame in the late 1990s as the lead singer of Destiny\'s Child, one of the best-selling girl groups of all time. Their hiatus saw the release of her first solo album, Dangerously in Love (2003), which featured the US Billboard Hot 100 number-one singles \"Crazy in Love\" and \"Baby Boy\".\r\n\r\nFollowing the 2006 disbandment of Destiny\'s Child, she released her second solo album, B\'Day, which contained hit singles \"Irreplaceable\" and \"Beautiful Liar\". Beyoncé also starred in multiple films such as The Pink Panther (2006), Dreamgirls (2006), Obsessed (2009), and The Lion King (2019). Her marriage to Jay-Z and her portrayal of Etta James in Cadillac Records (2008) influenced her third album, I Am... Sasha Fierce (2008), which earned a record-setting six Grammy Awards in 2010. It spawned the successful singles \"If I Were a Boy\", \"Single Ladies (Put a Ring on It)\", and \"Halo\".\r\n\r\nAfter splitting from her manager and father Mathew Knowles in 2010, Beyoncé released her musically diverse fourth album 4 in 2011. She later achieved universal acclaim for her sonically experimental visual albums, Beyoncé (2013) and Lemonade (2016), the latter of which was the world\'s best-selling album of 2016 and the most acclaimed album of her career, exploring themes of infidelity and womanism. In 2018, she released Everything Is Love, a collaborative album with her husband, Jay-Z, as the Carters. As a featured artist, Beyoncé topped the Billboard Hot 100 with the remixes of \"Perfect\" by Ed Sheeran in 2017 and \"Savage\" by Megan Thee Stallion in 2020. The same year, she released the musical film and visual album Black Is King to widespread acclaim.\r\n\r\nBeyoncé is one of the world\'s best-selling recording artists, having sold 118 million records worldwide.[7] She is the first artist to debut at number one on the Billboard 200 with their first six solo studio albums.[8] Her success during the 2000s was recognized with the RIAA\'s Top Certified Artist of the Decade as well as Billboard\'s Top Female Artist of the Decade.[9] Beyoncé\'s accolades include 28 Grammy Awards, 26 MTV Video Music Awards (including the Michael Jackson Video Vanguard Award in 2014), 24 NAACP Image Awards, 31 BET Awards, and 17 Soul Train Music Awards; all of which are more than any other singer. In 2014, Billboard named her the highest-earning black musician of all time, while in 2020, she was included on Time\'s list of 100 women who defined the last century.[10]', '2021-05-11 06:41:08', '2021-05-12 12:47:49', ''),
(3, 'Jude Law', 'David Jude Heyworth Law[1] (born 29 December 1972)[2] is an English actor. He has received multiple awards including a BAFTA Film Award as well as nominations for two Academy Awards and two Tony Awards. In 2007, he received an Honorary César and was named a knight of the Order of Arts and Letters by the French government.[1][3]\r\n\r\nBorn and raised in London, Law started acting in theatre. After finding small roles in feature films, Law gained recognition for his role in Anthony Minghella\'s The Talented Mr. Ripley (1999), for which he won the BAFTA Award for Best Actor in a Supporting Role and was nominated for an Academy Award. He found further critical and commercial success in Enemy at the Gates (2001), Steven Spielberg\'s A.I. Artificial Intelligence (2001) and Sam Mendes\' Road to Perdition (2002). He continued to gain praise for starring in the war film Cold Mountain (2003), the drama Closer (2004), and the romantic comedy The Holiday (2006), gaining Academy Award and BAFTA nominations for the first of these.\r\n\r\nLaw played Dr. Watson in Sherlock Holmes (2009) and Sherlock Holmes: A Game of Shadows (2011), a younger Albus Dumbledore in Fantastic Beasts: The Crimes of Grindelwald (2018), and Yon-Rogg in Captain Marvel (2019); all of which rank among his highest-grossing releases. His other notable roles were in Contagion (2011), Hugo (2011), Side Effects (2013), The Grand Budapest Hotel (2014), and Spy (2015); and the television series The Young Pope (2016) and The New Pope (2020).\r\n\r\nLaw has also had an accomplished career on stage, performing in several West End and Broadway productions such as Les Parents terribles in 1994, Hamlet in 2010, and Anna Christie in 2011.[4] He received Tony Award nominations for the first and second of these.\r\n\r\nLaw\'s Riff Raff Entertainment, founded with business partner Ben Jackson, inked a first-look deal for both feature films and television production with New Republic Pictures on April 13, 2021.[5]', '2021-05-11 11:03:47', '2021-05-12 12:47:18', ''),
(4, 'Leonardo DiCaprio', 'Leonardo Wilhelm DiCaprio (/dɪˈkæprioʊ/; Italian: [diˈkaːprjo]; born November 11, 1974) is an American actor, film producer, and environmentalist. He has often played unconventional roles, particularly in biopics and period films. As of 2019, his films have grossed $7.2 billion worldwide, and he has placed eight times in annual rankings of the world\'s highest-paid actors.\r\n\r\nBorn in Los Angeles, DiCaprio began his career by appearing in television commercials in the late 1980s. In the early 1990s, he played recurring roles in various television series, such as the sitcom Parenthood. DiCaprio had his first major film role as Tobias \"Toby\" Wolff in This Boy\'s Life (1993). He received critical acclaim and first Academy Award and Golden Globe Award nominations for Best Actor in a Supporting Role for his performance as a developmentally disabled boy Arnie Grape in What\'s Eating Gilbert Grape (1993), becoming the seventh-youngest nominee in the category. He achieved international stardom in the epic romance Titanic (1997), which became the highest-grossing film to that point. After a few commercially unsuccessful films, DiCaprio starred in two successful features in 2002: the biographical crime drama Catch Me If You Can and the historical drama Gangs of New York, which marked his first of many collaborations with director Martin Scorsese.\r\n\r\nDiCaprio portrayed Howard Hughes in The Aviator (2004) and continued to receive acclaim for his performances in the political thriller Blood Diamond (2006), the crime drama The Departed (2006), and the romantic drama Revolutionary Road (2008). In the 2010s, he starred in the science fiction thriller Inception (2010), the western Django Unchained (2012), the biopic The Wolf of Wall Street (2013), the survival drama The Revenant (2015), and the comedy-drama Once Upon a Time in Hollywood (2019), all of which were critical and commercial successes. His accolades include an Academy Award, a BAFTA, Screen Actors Guild Award, and a Golden Globe Award for The Revenant as well as two other Golden Globes for The Aviator and The Wolf of Wall Street.\r\n\r\nDiCaprio is the founder of Appian Way Productions—a production company that has produced some of his films and the documentary series Greensburg (2008–2010)—and the Leonardo DiCaprio Foundation, a nonprofit organization devoted to promoting environmental awareness. He regularly supports charitable causes and has produced several documentaries on the environment. In 2005, he was named the commander of the Ordre des Arts et des Lettres for his contributions to the arts, and in 2016, he was named one of the 100 most influential people in the world by Time magazine.', '2021-05-11 11:31:45', '2021-05-12 12:49:02', ''),
(5, 'Megan Fox', 'Megan Denise Fox[1] (born May 16, 1986) is an American actress and model. She is considered a sex symbol, and is recognized for her public image and looks, having appeared in numerous magazines such as Maxim, Rolling Stone, and FHM.[2][3] She is the recipient of several accolades, including two Scream Awards and four Teen Choice Awards.\r\n\r\nFox made her acting debut in the family film Holiday in the Sun (2001), which was followed by numerous supporting roles in film and television, such as the teen musical comedy Confessions of a Teenage Drama Queen (2004), as well as a starring role in the ABC sitcom Hope & Faith (2004–2006).\r\n\r\nFox\'s breakout role was as Mikaela Banes in the blockbuster action film Transformers (2007), which she reprised in its sequel Transformers: Revenge of the Fallen (2009). She also portrayed the titular character in the horror comedy Jennifer\'s Body (2009), starred as April O\'Neil in the superhero action film Teenage Mutant Ninja Turtles (2014) and its sequel Teenage Mutant Ninja Turtles: Out of the Shadows (2016), and starred as Reagan Lucas in the fifth and sixth seasons of the Fox sitcom New Girl (2016–2017).', '2021-05-11 11:31:58', '2021-05-12 12:49:23', ''),
(6, 'Nicole Kidman', 'Nicole Mary Kidman[1] AC (born 20 June 1967)[2] is an American-born Australian[3] actress, producer[4] and singer. She has received many accolades throughout her career, including two Primetime Emmy Awards, five Golden Globe Awards, and an Academy Award from four nominations. She was ranked among the world\'s highest-paid actresses in 2006, 2018, and 2019. Time magazine named her one of the 100 most influential people in the world in 2004 and again in 2018.[5][6][7] In 2020, The New York Times ranked her fifth on its list of the greatest actors of the 21st century up to that point.[8]\r\n\r\nKidman began her acting career in Australia with the 1983 films Bush Christmas and BMX Bandits. Her breakthrough came in 1989 with the thriller film Dead Calm and the miniseries Bangkok Hilton. In 1990, she made her Hollywood debut in the racing film Days of Thunder, opposite Tom Cruise. She went on to achieve wider recognition with lead roles in Far and Away (1992), Batman Forever (1995), To Die For (1995) and Eyes Wide Shut (1999). Kidman won the Academy Award for Best Actress for portraying the writer Virginia Woolf in the drama The Hours (2002). Her other Oscar-nominated roles were as a courtesan in the musical Moulin Rouge! (2001) and emotionally troubled mothers in the dramas Rabbit Hole (2010) and Lion (2016). Kidman\'s other film credits include The Others (2001), Cold Mountain (2003), Dogville (2003), Birth (2004), Australia (2008), The Paperboy (2012), Paddington (2014), The Killing of a Sacred Deer (2017), Destroyer (2018), Aquaman (2018) and Bombshell (2019).\r\n\r\nKidman\'s television roles include Hemingway & Gellhorn (2012), Big Little Lies (2017–2019), Top of the Lake: China Girl (2017), and The Undoing (2020). For Big Little Lies, she won two Primetime Emmy Awards for Outstanding Lead Actress and Outstanding Limited Series (as executive producer).\r\n\r\nKidman has been a Goodwill Ambassador for UNICEF since 1994[9] and for UNIFEM since 2006.[10] In 2006, she was appointed Companion of the Order of Australia.[11] Since she was born to Australian parents in Hawaii, Kidman holds dual citizenship of Australia and the United States.[12][13] In 2010, she founded the production company Blossom Films. She was married to actor Tom Cruise from 1990 to 2001, and has been married to country music singer Keith Urban since 2006.', '2021-05-11 11:32:11', '2021-05-12 12:49:43', ''),
(7, 'Robert Pattinson', 'Robert Douglas Thomas Pattinson (born 13 May 1986) is an English actor. Noted for his versatile roles in both big-budget and independent films, Pattinson has been ranked among the world\'s highest-paid actors. Time magazine named him one of the 100 most influential people in the world, and he was featured in the Forbes Celebrity 100 list.\r\n\r\nAfter starting to act in a London theatre club at age 15, he began his film career by playing Cedric Diggory in the fantasy film Harry Potter and the Goblet of Fire (2005). He gained worldwide recognition for portraying Edward Cullen in The Twilight Saga film series (2008–2012), which grossed over $3.3 billion worldwide. After starring in the romantic dramas Remember Me (2010) and Water for Elephants (2011), Pattinson received critical acclaim for his performances in independent films from auteur directors. He starred in David Cronenberg\'s thriller Cosmopolis (2012), David Michôd\'s dystopian western The Rover (2014), James Gray\'s adventure drama The Lost City of Z (2016), the Safdie Brothers\' crime drama Good Time (2017), Claire Denis\' science-fiction drama High Life (2018), and Robert Eggers\' psychological horror film The Lighthouse (2019). He returned to mainstream films with a leading role in Christopher Nolan\'s spy film Tenet (2020), and will star as the DC Comics superhero Batman in Matt Reeves\' film The Batman (2022).\r\n\r\nAside from acting, Pattinson plays the guitar and piano, writes music and has sung on several soundtracks for film. He supports several charities, including the GO Campaign and is the face of Dior Homme fragrance since 2013.', '2021-05-11 11:32:31', '2021-05-12 12:50:10', ''),
(8, 'Robert Redford', 'Charles Robert Redford Jr. (born August 18, 1936) is an American actor, director, and activist. He is the recipient of various accolades, including two Academy Awards, a British Academy Film Award, three Golden Globe Awards, the Cecil B. DeMille Award, and the Presidential Medal of Freedom. In 2014, Time magazine named him one of the 100 most influential people in the world.[1][2]\r\n\r\nAppearing on stage in the late 1950s, Redford\'s television career began in 1960, including an appearance on The Twilight Zone in 1962. He earned an Emmy nomination as Best Supporting Actor for his performance in The Voice of Charlie Pont (1962). His greatest Broadway success was as the stuffy newlywed husband of co-star Elizabeth Ashley\'s character in Neil Simon\'s Barefoot in the Park (1963). Redford made his film debut in War Hunt (1962). He started with Natalie Wood in Inside Daisy Clover (1965) which won him a Golden Globe for the best new star. He starred alongside Paul Newman in Butch Cassidy and the Sundance Kid (1969), which was a huge success and made him a major star. He had a critical and box office hit with Jeremiah Johnson (1972), and in 1973 he had the greatest hit of his career, the blockbuster crime caper The Sting, a reunion with Paul Newman, for which he was nominated for an Academy Award; that same year, he also starred opposite Barbra Streisand in The Way We Were. The popular and acclaimed All the President\'s Men (1976) was a landmark film for Redford.\r\n\r\nIn the 1980s, Redford began his career as a director with Ordinary People (1980), which was one of the most critically and publicly acclaimed films of the decade, winning four Oscars including Best Picture and the Academy Award for Best Director for Redford. He continued acting and starred in Brubaker (1980), as well as playing the male lead in Out of Africa (1985), which was an enormous box office success and won seven Oscars including Best Picture. He released his third film as a director, A River Runs Through It, in 1992. He went on to receive Best Director and Best Picture nominations in 1995 for Quiz Show. He received a second Academy Award—for Lifetime Achievement—in 2002. In 2010, he was made a chevalier of the Légion d\'Honneur. Redford is also one of the founders of the Sundance Film Festival.', '2021-05-11 11:32:49', '2021-05-12 12:50:36', ''),
(11, 'Angelina Jolie', 'Angelina Jolie is an American actress, filmmaker, and humanitarian. The recipient of numerous accolades, including an Academy Award and three Golden Globe Awards, she has been named Hollywood\'s highest-paid actress multiple times.\r\n\r\nJolie made her screen debut as a child alongside her father, Jon Voight, in Lookin\' to Get Out (1982), and her film career began in earnest a decade later with the low-budget production Cyborg 2 (1993), followed by her first leading role in a major film, Hackers (1995). She starred in the critically acclaimed biographical cable films George Wallace (1997) and Gia (1998), and won an Academy Award for Best Supporting Actress for her performance in the 1999 drama Girl, Interrupted. Her starring role as the video game heroine Lara Croft in Lara Croft: Tomb Raider (2001) established her as a leading Hollywood actress. She continued her action-star career with Mr. & Mrs. Smith (2005), Wanted (2008), Salt (2010) and The Tourist (2010), and received critical acclaim for her performances in the dramas A Mighty Heart (2007) and Changeling (2008), which earned her a nomination for an Academy Award for Best Actress. Her biggest commercial success came with the fantasy picture Maleficent (2014). She is also known for her voice role in animation film series Kung Fu Panda (2008-present). Jolie has also directed and written several war dramas, namely In the Land of Blood and Honey (2011), Unbroken (2014), and First They Killed My Father (2017).\r\n\r\nIn addition to her film career, Jolie is known for her humanitarian efforts, for which she has received a Jean Hersholt Humanitarian Award and made an honorary Dame Commander of the Order of St Michael and St George (DCMG), among other honors. She promotes various causes, including conservation, education, and women\'s rights, and is most noted for her advocacy on behalf of refugees as a Special Envoy for the United Nations High Commissioner for Refugees (UNHCR). Jolie undertaken over a dozen field missions globally to refugee camps and war zones; her visited countries include Sierra Leone, Tanzania, Pakistan, Afghanistan and Sudan.\r\n\r\nAs a public figure, Jolie has been cited as one of the most powerful and influential people in the American entertainment industry. She has been cited as the world\'s most beautiful woman by various media outlets. Her personal life, including her relationships, marriages, and health, has been the subject of wide publicity. She is divorced from actors Jonny Lee Miller and Billy Bob Thornton, and is legally separated from actor Brad Pitt with whom she has six children, three of whom were adopted internationally.', '2021-05-11 12:57:33', '2021-05-11 13:58:16', 'Angelina Jolie_1620748695.jpg'),
(13, 'Selena Gomez', 'Selena Gomez, née le 22 juillet 1992 à Grand Prairie, au Texas, est une chanteuse, actrice et productrice américaine.\r\n\r\nElle fait ses débuts de comédienne dans la série pour enfants Barney & Friends (2002-2004), puis se fait connaître du jeune public en interprétant le rôle d\'Alex Russo dans la série humoristique de Disney Channel, Les Sorciers de Waverly Place (2007-2012). Elle joue ensuite dans de nombreux films ou téléfilms tels que Comme Cendrillon 2 (2008), Princess Protection Program (2009), Sœurs malgré elles (Ramona et Beezus, 2010), Bienvenue à Monte-Carlo (2011), Spring Breakers (2012), Getaway (2013) et The Fundamentals of Caring (2016). Elle interprète par ailleurs la voix du personnage Mavis dans les films d\'animation de la franchise Hôtel Transylvanie.\r\n\r\nEn 2008, Selena Gomez forme son groupe musical Selena Gomez and the Scene. Il sort trois albums : Kiss and Tell (2009), A Year Without Rain (2010) et When the Sun Goes Down (2011). Il se dissout en 2012. Les deux plus gros succès du groupe sont Naturally et Love You Like a Love Song. En 2013, Selena Gomez sort son premier album solo, Stars Dance, qui atteint la première place du classement américain Billboard 200. En est extrait le single Come & Get It. Après six années de collaboration avec le label Hollywood Records, Selena Gomez signe, en 2014, un contrat avec Interscope Records. En 2015, elle sort son deuxième album solo Revival. Il débute à la première place du Billboard 200. Trois de ses singles, Good For You, Same Old Love et Hands to Myself atteignent le top 10 du Billboard Hot 100. Entre 2016 et 2019, Selena Gomez sort plusieurs collaborations dont We Don\'t Talk Anymore avec Charlie Puth, It Ain\'t Me avec Kygo, Wolves avec Marshmello, Taki Taki avec Ozuna, Cardi B et DJ Snake.Elle sort des titres solo comme Fetish, Bad liar et Back To You. En 2020, Selena Gomez sort son troisième album solo Rare, après 4 ans d\'attente. Il débute à la première place du Billboard 200. Ses album solo ont tous commencé à cette place et le single Lose You to Love Me débute à la première place du Billboard Hot 100. C\'est son premier single à avoir atteint cette place.\r\n\r\nEn 2011, Selena Gomez lance sa ligne de vêtements en collaboration avec Kmart intitulée Dream Out Loud. En 2017, elle lance une collection de sacs à main en édition limitée appelée « Selena Grace » qu\'elle a conçu avec la marque de luxe Coach. Par ailleurs, depuis 2009, Selena Gomez est ambassadrice de bonne volonté pour l\'Unicef. Elle est très active sur les réseaux sociaux : quatrième personnalité la plus suivie au monde sur ces réseaux, elle était, pendant un long moment, la personne la plus suivie sur Instagram. Depuis, Cristiano Ronaldo ( 1er) et Ariana Grande (2eme) l’ont dépassée. En 2017, selon Billboard, Selena Gomez a vendu plus de 7 millions d\'albums et 22 millions de singles. Elle a déjà obtenu plusieurs récompenses notables au cours de sa carrière telles que le Billboard Woman Of Music 2017, ainsi qu\'un ALMA Award, des American Music Award, des MTV Video Music Award, un NRJ Music Award, un People\'s Choice Award et seize Teen Choice Awards.', '2021-05-12 12:42:31', '2021-05-12 12:42:31', 'Selena_Gomez_1620830551.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
