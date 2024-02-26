-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 10:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(1, 'Programming', '          coding &amp; programming '),
(8, 'Web Dev', '         web dev desc '),
(10, 'Art', '          desc for  Art'),
(13, 'Uncategorize', 'uncategorized description\r\n'),
(15, 'Food', 'This is food category description');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(14, 'PHP &amp; MySQL Blog App with Admin Panel Tutorial From Scratch PHP &amp; MySQL Tutorial For Beginners', 'PHP is a server-side scripting language that is widely used for web development and business application. The open-source tools and high running speed make PHP one of the most preferred languages for creating interactive websites and web applications. Some of the biggest web platforms of today, including Facebook, Flickr, Yahoo, MailChimp, and Wikipedia, to name a few, use PHP in their end-to-end computing infrastructure. \r\n\r\nAs the market for PHP increases, businesses are looking for new PHP web development trends to develop a perfect web app. Keep reading to learn more about PHP technology, applications of PHP framework, and how to build a career as a PHP Developer.\r\nPHP is a server-side scripting language that is widely used for web development and business application. The open-source tools and high running speed make PHP one of the most preferred languages for creating interactive websites and web applications. Some of the biggest web platforms of today, including Facebook, Flickr, Yahoo, MailChimp, and Wikipedia, to name a few, use PHP in their end-to-end computing infrastructure. \r\n\r\nAs the market for PHP increases, businesses are looking for new PHP web development trends to develop a perfect web app. Keep reading to learn more about PHP technology, applications of PHP framework, and how to build a career as a PHP Developer.\r\n\r\nWant a Top Software Development Job? Start Here!\r\nFull Stack Development-MEANEXPLORE PROGRAMWant a Top Software Development Job? Start Here!\r\nWhat is PHP and Why Should You Learn It?\r\nIn an age of intimidating, large-scaled tech stacks, PHP remains widely used in the web development niche. The use of PHP is nearly everywhere on the web. It is estimated that 79.1% of all websites with a recognized server-side programming language use PHP. \r\n\r\nPHP is an acronym for &ldquo;Hypertext Processor&rdquo; and was first released by Danish-Canadian programmer Rasmus Lerdorf in 1995. PHP scripts can be easily embedded into HTML documents that are served at the front end of the server. An interpreter acts as a backend module integrating into the webserver. Thus, PHP is an excellent choice for building full-fledged websites based on static HTML. \r\n\r\nA neat feature of PHP is that it&#039;s very flexible and versatile. PHP is almost the same as if it was an object-oriented language, making it a very convenient language to work with. It also has a quite powerful meta-language for developers. \r\nA web page or web application is required to offer high levels of customization, a very interactive user interface and should be able to perform online transactions and integrate with database systems. PHP ensures all these features are achieved through its three-tiered architecture that works in a linear fashion on browser, server, and database systems. This explains why more than 82% of websites use PHP for server-side programming. Numerous web-based applications and Facebook apps are scripted in PHP too.', '1708932258AI_Generated_Image_2024-02-25_446589653006201.png', '2024-02-26 07:24:18', 1, 1, 0),
(15, 'Next.js 14 Booking App with Live Data Scraping using Scraping Browser', 'Introduction\r\nIn the ever-evolving landscape of web development, the ability to efficiently gather, process, and display data from external sources has become increasingly valuable. Whether for market research, competitive analysis, or customer insights, web scraping plays a crucial role in unlocking the vast potential of the internet&#039;s data.\r\n\r\nThis blog post introduces a comprehensive guide to building a robust Next.js application designed for scraping flight data from Kayak, one of the leading travel search engines. By leveraging the power of Next.js alongside modern technologies such as BullMQ, Redis, and Puppeteer.\r\n\r\nTech Stack\r\nNext.js\r\nTailwind CSS\r\nNext UI\r\nZustand\r\nStripe\r\nBright Data&#039;s Scraping Browser\r\nTypeScript\r\nRedis\r\nBullMQ\r\nPuppeteer\r\nJWT\r\nAxios\r\nPostgreSQL\r\nPrisma\r\nFeatures\r\n🚀 Next.js 14 App Directory with Tailwind CSS - Experience the sleek and modern UI powered by the latest Next.js 14 and styled with Tailwind CSS for that perfect look and feel.\r\n🔗 API Routes &amp; Server Actions - Dive into seamless backend integration with Next.js 14&#039;s API routes and server actions ensuring efficient data handling and server-side logic execution.\r\n🕷 Scraping with Puppeteer Redis and BullMQ - Harness the power of Puppeteer for advanced web scraping with Redis and BullMQ managing queues and jobs for robust backend operations.\r\n🔑 JWT Tokens for Authentication and Authorization - Secure your app with JWT tokens providing a reliable method for authentication and authorization across your platform.\r\n💳 Stripe for Payment Gateways - Integrate Stripe for seamless payment processing enabling secure and easy transactions for booking trips flights and hotels.\r\n✈️ Book Trips Flights and Hotels with Stripe Payment Gateway - Make your travel booking experience effortless with our Stripe-powered payment system.\r\n📊 Scrape Live Data from Multiple Websites - Stay ahead with real-time data scraping from multiple sources keeping your app updated with the latest information.\r\n💾 Store the Scraped Data in PostgreSQL with Prisma - Leverage PostgreSQL and Prisma for efficient storage and management of your scraped data ensuring reliability and speed.\r\n🔄 Zustand for State Management - Enjoy smooth and manageable state management in your app with Zustand simplifying state logic and enhancing performance.\r\n😈 Best Feature of the App - Scraping the Unscrapable Data with Bright Data&#039;s Scraping Browser.Bright Data&#039;s Scraping Browser provides us with an automatic captcha-solving feature that helps us scrape the un-scrapable data.\r\n\r\nStep 1: Setting Up the Next.js Application\r\nCreate a Next.js App: Start by creating a new Next.js app if you haven&#039;t already. You can do this by running the following command in your terminal:\r\nnpx create-next-app@latest booking-app\r\nNavigate to Your App Directory: Change into your newly created app directory:\r\ncd booking-app\r\nStep 2: Installing Required Packages\r\nYou&#039;ll need to install several packages, including Redis, BullMQ, and Puppeteer Core. Run the following command to install them:\r\nnpm install ioredis bullmq puppeteer-core\r\nioredis is a robust Redis client for Node.js, enabling communication with Redis.\r\nbullmq manages job and message queues with Redis as the backend.\r\npuppeteer-core allows you to control an external browser for scraping purposes.\r\nStep 3: Setting Up Redis Connection\r\nCreate a file (e.g., redis.js) in a suitable directory (e.g., lib/) to configure the Redis connection:\r\n// lib/redis.js\r\nimport Redis from &#039;ioredis&#039;;\r\n\r\n// Use REDIS_URL from environment or fallback to localhost\r\nconst REDIS_URL = process.env.REDIS_URL || &#039;redis://localhost:6379&#039;;\r\nconst connection = new Redis(REDIS_URL);\r\n\r\nexport { connection };\r\nStep 4: Configuring BullMQ Queue\r\nSet up the BullMQ queue by creating another file (e.g., queue.js) in the same directory as your Redis configuration:\r\n// lib/queue.js\r\nimport { Queue } from &#039;bullmq&#039;;\r\nimport { connection } from &#039;./redis&#039;;\r\n\r\nexport const importQueue = new Queue(&#039;importQueue&#039;, {\r\n  connection,\r\n  defaultJobOptions: {\r\n    attempts: 2,\r\n    backoff: {\r\n      type: &#039;exponential&#039;,\r\n      delay: 5000,\r\n    },\r\n  },\r\n});\r\nStep 5: Next.js Instrumentation Setup\r\nNext.js allows instrumentation, which can be enabled in your Next.js configuration. You&#039;ll also need to create a worker file for job processing.\r\n\r\n1.Enable Instrumentation in Next.js: Add the following to your next.config.js to enable instrumentation:\r\n// next.config.js\r\nmodule.exports = {\r\n  experimental: {\r\n    instrumentationHook: true,\r\n  },\r\n};\r\n2.Create a Worker for Job Processing: In your application, create a file (instrumentation.js) to handle job processing. This worker will use Puppeteer for scraping tasks:\r\n// instrumentation.js\r\nexport const register = async () =&gt; {\r\n  if (process.env.NEXT_RUNTIME === &#039;nodejs&#039;) {\r\n    const { Worker } = await import(&#039;bullmq&#039;);\r\n    const puppeteer = await import(&#039;puppeteer-core&#039;);\r\n    const { connection } = await import(&#039;./lib/redis&#039;);\r\n    const { importQueue } = await import(&#039;./lib/queue&#039;);\r\n\r\n    new Worker(&#039;importQueue&#039;, async (job) =&gt; {\r\n      // Job processing logic with Puppeteer goes here\r\n    }, {\r\n      connection,\r\n      concurrency: 10,\r\n      removeOnComplete: { count: 1000 },\r\n      removeOnFail: { count: 5000 },\r\n    });\r\n  }\r\n};\r\nStep 6: Setting up Bright Data&#039;s Scraping Browser\r\nBefore setting up Bright Data Scraping Browser let&#039;s talk about what a scraping browser is.\r\n\r\nWhat is Bright Data&#039;s scraping browser?\r\nBright Data&#039;s Scraping Browser is a cutting-edge tool for automated web scraping, designed to seamlessly integrate with Puppeteer, Playwright, and Selenium. It offers a suite of website unblocking features, including proxy rotation, CAPTCHA solving, and more, to enhance scraping efficiency. Ideal for complex web scraping requiring interactions, it allows scalability by hosting unlimited browser sessions on Bright Data&rsquo;s infrastructure. For more details, visit Bright Data.', '1708932562wp11846968-nextjs-wallpapers.png', '2024-02-26 07:29:22', 8, 1, 0),
(16, 'Pablo Picasso | Biography, Art &amp; Cubism', '\r\nSummary of Pablo Picasso\r\nPablo Picasso was the most dominant and influential artist of the first half of the 20th century. Associated most of all with pioneering Cubism, alongside Georges Braque, he also invented collage and made major contributions to Symbolism and Surrealism. He saw himself above all as a painter, yet his sculpture was greatly influential, and he also explored areas as diverse as printmaking and ceramics. Finally, he was a famously charismatic personality; his many relationships with women not only filtered into his art but also may have directed its course, and his behavior has come to embody that of the bohemian modern artist in the popular imagination.It was a confluence of influences - from Paul C&eacute;zanne and Henri Rousseau, to archaic and tribal art - that encouraged Picasso to lend his figures more structure and ultimately set him on the path towards Cubism, in which he deconstructed the conventions of perspective that had dominated painting since the Renaissance. These innovations would have far-reaching consequences for practically all of modern art, revolutionizing attitudes to the depiction of form in space.\r\nPicasso&#039;s immersion in Cubism also eventually led him to the invention of collage, in which he abandoned the idea of the picture as a window on objects in the world, and began to conceive of it merely as an arrangement of signs that used different, sometimes metaphorical means, to refer to those objects. This too would prove hugely influential for decades to come.\r\nPicasso had an eclectic attitude to style, and although, at any one time, his work was usually characterized by a single dominant approach, he often moved interchangeably between different styles - sometimes even in the same artwork.\r\nHis encounter with Surrealism, although never transforming his work entirely, encouraged not only the soft forms and tender eroticism of portraits of his mistress Marie-Therese Walter, but also the starkly angular imagery of Guernica (1937), the century&#039;s most famous anti-war painting.\r\nPicasso was always eager to place himself in history, and some of his greatest works, such as Les Demoiselles d&#039;Avignon (1907), refer to a wealth of past precedents - even while overturning them. As he matured he became only more conscious of assuring his legacy, and his late work is characterized by a frank dialogue with Old Masters such as Ingres, Velazquez, Goya, and Rembrandt.La Soupe is characteristic of the somber melancholy of Picasso&#039;s Blue Period, and it was produced at the same time as a series of other pictures devoted to themes of destitution, old age, and blindness. The picture conveys something of Picasso&#039;s concern with the miserable conditions he witnessed while coming of age in Spain, and it is no doubt influenced by the religious painting he grew up with, and perhaps specifically by El Greco. But the picture is also typical of the wider Symbolist movement of the period. In later years Picasso dismissed his Blue Period works as &quot;nothing but sentiment&quot;; critics have often agreed with him, even though many of these pictures are iconic, and of course, now unbelievably expensive.\r\n\r\nOil on canvas - The Art Institute of ChicagoGertrude Stein was an author, close friend, and even supporter of Picasso, and was integral to his growth as an artist. This portrait, in which Stein is wearing her favorite brown velvet coat, was made just a year before Les Demoiselles d&#039;Avignon, and marks an important stage in his evolving style. In contrast to the flat appearance of the figures and objects in some of the Blue and Rose period works, the forms in this portrait seem almost sculpted, and indeed they were influenced by the artist&#039;s discovery of archaic Iberian sculpture. One can almost sense Picasso&#039;s increased interest in depicting a human face as a series of flat planes. Stein claimed that she sat for the artist some ninety times, and although that may be an exaggeration, Picasso certainly wrestled long and hard with painting her head. After approaching it in various ways, abandoning each attempt, one day he painted it out altogether, declaring &quot;I can&#039;t see you any longer when I look,&quot; and soon abandoned the picture. It was only some time later, and without the model in front of him, that he completed the head.\r\n\r\nOil on canvas - The Metropolitan Museum of Art, New YorkLes Demoiselles d&#039;Avignon\r\nThis painting was shocking even to Picasso&#039;s closest artist friends both for its content and its execution. The subject matter of nude women was not in itself unusual, but the fact that Picasso painted the women as prostitutes in aggressively sexual postures was novel. Picasso&#039;s studies of Iberian and tribal art is most evident in the faces of three of the women, which are rendered as mask-like, suggesting that their sexuality is not just aggressive, but also primitive. Picasso also went further with his spatial experiments by abandoning the Renaissance illusion of three-dimensionality, instead presenting a radically flattened picture plane that is broken up into geometric shards, something Picasso borrowed in part from Paul C&eacute;zanne&#039;s brushwork. For instance, the leg of the woman on the left is painted as if seen from several points of view simultaneously; it is difficult to distinguish the leg from the negative space around it making it appear as if the two are both in the foreground.\r\n\r\nThe painting was widely thought to be immoral when it was finally exhibited in public in 1916. Braque is one of the few artists who studied it intently in 1907, leading directly to his Cubist collaborations with Picasso. Because Les Demoiselles predicted some of the characteristics of Cubism, the work is considered proto or pre Cubism.\r\n\r\nOil on canvas - The Museum of Modern Art, New York', '1708932791picasso_pablo_525.jpg', '2024-02-26 07:33:11', 10, 1, 0),
(17, 'Thomas Cole || BRITISH-AMERICAN PAINTER', 'Summary of Thomas Cole\r\nThe paintings of Thomas Cole, like the writings of his contemporary Ralph Waldo Emerson, stand as monuments to the dreams and anxieties of the fledgling American nation during the mid-19th century; and they are also euphoric celebrations of its natural landscapes. Born in the industrial north-west of England, Cole moved to the United States as a young man, and from that point onwards sought to capture in paint the sublime beauty of the American wilderness. He is considered the first artist to bring the eye of a European Romantic landscape painter to those environments, but also a figure whose idealism and religious sensibilities expressed a uniquely American spirit. Indeed, despite his upbringing in Britain - or perhaps because that upbringing gave him a fresh perspective - his work continues to resonate as an exemplar of that spirit in the modern day.No one before Thomas Cole had applied the motifs and techniques of European Romantic landscape painting to the scenery of North America. In his works, we find the dramatic splendor of Caspar David Freidrich or J.M.W Turner transposed onto the Catskill and Adirondack Mountains. But whereas younger American painters such as Albert Bierstadt had come into direct contact with The D&uuml;sseldorf School of painting, and thus with the tradition in which they placed themselves, Cole was largely self-tutored, representing something of the archetypal American figure of the auto-didact.\r\nThomas Cole is seen as the founding father of the Hudson River School, a group of American artists who sought to depict the untainted majesty of the American landscape, particularly that located around the Hudson River Valley in New York State. Cole was the first to explore this territory, taking steamboat trips up the valley from the mid-1820s onwards, and his work became a touchstone for a whole generation of American artists including Frederic Edwin Church, Albert Bierstadt, and Asher Brown Durand.\r\nIn many ways, Cole&#039;s art epitomizes all contradictions of European settler culture in America. He was in love with the sublime wildness of the American landscape, and sought to preserve it with his art, but his very presence in that landscape, and the development of his career, depended on the processes of urbanization and civilization which threatened it. From a modern perspective, Cole&#039;s Eurocentric gaze on seemingly empty wildernesses which had, in fact, been populated for centuries, also seems troubling; where Native Americans do appear in his work, as in Falls of the Kaaterskill (1826), it is as picturesque flecks rather than characterized participants in the scene.\r\nCole&#039;s paintings often serve as warnings about the destructive course of human civilization, offering portents of the devastation of the natural world, and the ceaseless spread of industry, which the American project seemed to represent. A deeply religious man, Cole saw these processes as transgressing God&#039;s will in some way, and various of his works imply that a moment of judgement or catastrophe might be imminent.', '1708932944herocole.jpg', '2024-02-26 07:35:44', 10, 1, 1),
(21, 'How To Prepare The Plywood For Paintig In Artist&#039;s Oil Colour?', 'That depends on the type of surface you want visible.\r\n\r\nIf you&#039;d like the grain &amp; color of the wood to be visible, you might want to paint directly on the plywood -- but bear in mind the colors might get absorbed into the grain and if you are using very liquidy paint (or washes), the patterns of stain/strokes might be hard to control. A way to avoid this would be to coat the wood with GAC-100 which would seal and isolate the wood surface, yet be clear.\r\n\r\nIf you prefer to paint on a whitish surface you could apply one or two coats of acrylic gesso (depending on your preference of absorption), but again this might tend to absorb the paint a bit.\r\n\r\nLastly, if you want the paint to flow and be kept on the surface, a coat of PVA glue followed by 1 or more coats of oil ground would work. Some grounds (such as Gamblin) are alkyd-based and will dry within a a week or two, whereas if you apply a traditional linseed-based oil ground you would have to wait several weeks or even months before the surface is completely dry and ready to be worked on.\r\nIt should be sealed with a not-too-glossy sealer on all sides. The edges should also be sealed with caulk or sealer. This is to prevent gas exchange, which promotes deterioration. Then, plywood should be primed. Then oil paints may be applied. After the painting is complete, varnish all sides of the board.', '1708934609Picasso_strolling-player-and-child_v_1703169525.jpg', '2024-02-26 08:03:29', 10, 10, 0),
(22, 'What is Server Side Rendering (SSR) and Static Site Generation (SSG)?', 'In recent years, projects like Vercel&#039;s NextJS and Gatsby have garnered acclaim and higher and higher usage numbers. Not only that, but their core concepts of Server Side Rendering (SSR) and Static Site Generation (SSG) have been seen in other projects and frameworks such as Angular Universal, ScullyIO, and NuxtJS. Why is that? What is SSR and SSG? How can I use these concepts in my applications?\r\n\r\nWe&#039;ll walk through all of these questions and provide answers for each. First, we have to have an understanding of how a typical HTML site is able to serve content to your user.\r\n\r\nVanilla HTML Sites\r\nWhile many sites today are built using a component-based framework like Angular, React, or Vue, there&#039;s nothing wrong with good ole&#039; HTML. For sites like this, you typically provide an HTML file for each of the routes of your site. When the user requests one of the routes, your server will return the HTML for it. From there, your browser parses that code and provides the content directly to the user. All in all, the process looks something like this:\r\n\r\n1) You build HTML, CSS, JS\r\n2) You put it on a server\r\n3) The client downloads the HTML, CSS, JS from server\r\n4) The client immediately sees content on screen\r\n\r\nClient Side Rendering\r\nWhile you may not be familiar with this term, you&#039;re more than likely familiar with how you&#039;d implement one of these; After all, this is the default when building an Angular, React, or Vue site. Let&#039;s use a React site as an example. When you build a typical React SPA without utilizing a framework like NextJS or Gatsby, you&#039;d:\r\n\r\n1) You build the React code\r\n2) You put it on a server\r\n3) The client downloads the React code from the server\r\n4) The React code runs and generates the HTML/CSS on the client&#039;s computer\r\n5) The user then sees the content on screen after React runs', '1708934737download.jpg', '2024-02-26 08:05:37', 8, 10, 0),
(23, 'Home Screen Advantage', 'This is part nine of the nine-part series &quot;Browser Choice Must Matter&quot;\r\n\r\nAfter weeks of confusion and intentional chaos, Apple&#039;s plan to kneecap the web has crept into view, menacing a PWApocalypse as the March 6th compliance deadline approaches for the EU&#039;s Digital Markets Act (DMA).The DMA requires Apple to open the iPhone to competing app stores, and and its lopsided proposal for &quot;enabling&quot; them is getting most of the press. But Apple knows it has native stores right where it wants them. Cupertino&#039;s noxious requirements will take years to litigate. Meanwhile, potential competitors are only that.\r\n\r\nBut Cupertino can&#039;t delay the DMA&#039;s other mandate: real browsers, downloaded from Apple&#039;s own app store. Since it can&#039;t keep them from emerging, it&#039;s trying to raise costs on competitors and lower their potential to disrupt Apple&#039;s cozy monopoly. How? By geofencing browser choice and kneecapping web apps, all while gaslighting users about who is breaking their web apps.\r\n\r\nThe immediate impact of iOS 17.4 in the EU will be broken apps and lost data, affecting schools, governments, startups, gamers, and anyone else with the temerity to look outside the one true app store for even a second.\r\n\r\nThe data loss will be catastrophic for many, as will the removal of foundational features like reliable data storage, app-like UI, settings integration, Push Notifications, and unread counts. This will just so happen to render PWAs useless to worldwide businesses looking to reach EU users. A regrettable accident, to be sure.\r\n\r\nApple&#039;s interpretation of the DMA appears to be that features not available on March 6th don&#039;t need to be shared with competitors, and it doesn&#039;t want to share web apps. The solution almost writes itself: sabotage PWAs ahead of the deadline and give affected users, businesses, and competitors minimal time to react.', '1708934797SW4-SE-YavinOrbit3.jpg', '2024-02-26 08:06:37', 1, 10, 0),
(24, 'Winter Grain Bowl with Balsamic Dressing', 'One of the best things about these wintery grain bowls is that they can stand up to some fridge time. Yes, keep the kale, goat cheese, and pistachios separate to maintain their freshness. But that roasted vegetable, wild rice, and dried cherry medley can sit tight in a little bit of balsamic dressing while it&rsquo;s in the fridge and kinda just keeps getting better and better.\r\n\r\nThis winter grain bowl is:\r\n\r\nreally delicious\r\ncolorful\r\npacked with nutrition\r\ncalorie-dense (in a good way)\r\nsuper satisfying\r\nadaptable (pick and choose your favorite roasted winter vegetables)\r\nreally good with or without protein\r\nplayful\r\npossibly the best &ldquo;salad&rdquo; format for winter.One of the best things about these wintery grain bowls is that they can stand up to some fridge time. Yes, keep the kale, goat cheese, and pistachios separate to maintain their freshness. But that roasted vegetable, wild rice, and dried cherry medley can sit tight in a little bit of balsamic dressing while it&rsquo;s in the fridge and kinda just keeps getting better and better.\r\n\r\nThis winter grain bowl is:\r\n\r\nreally delicious\r\ncolorful\r\npacked with nutrition\r\ncalorie-dense (in a good way)\r\nsuper satisfying\r\nadaptable (pick and choose your favorite roasted winter vegetables)\r\nreally good with or without protein\r\nplayful\r\npossibly the best &ldquo;salad&rdquo; format for winter.', '1708934911WhatsApp Image 2024-02-24 at 11.30.56 AM (1).jpeg', '2024-02-26 08:08:31', 15, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(1, 'Swapnil', 'Shelke', 'swapnil', 'swapnil@gmail.com', '$2y$10$MQSdMTV3cJ4bzEOWlu2Kk.AfPwSVrpi2n7bnXP.Jxks2tsftpz706', '1708536291wallpaper-black-theme.jpg', 1),
(8, 'Aashay', 'Patil', 'Aashay', 'aashay@gmail.com', '$2y$10$5RzQpn3zV4ydOMk0QOmr4ut1LHMJOUD6URNIe/wF//ijJxH1XyYuq', '1708934342WhatsApp Image 2024-02-24 at 11.30.56 AM.jpeg', 0),
(9, 'Srushti', 'Patil', 'Srushti', 'srushti@gmail.com', '$2y$10$IsQEojhJBpo9JUGEZVZOYOIjr2ZrF5QVpySgF.q3tLOcEF4TeQFH2', '1708934409WhatsApp Image 2024-02-24 at 11.17.00 AM (1).jpeg', 0),
(10, 'Avinash', 'Pathade', 'Avinash', 'avinash@gmail.com', '$2y$10$LolIwS8hRK/uGEmERIangOOxpk.a4rgU1Wzyhgunef2fmR8oRFyCa', '1708934500WhatsApp Image 2024-02-24 at 11.30.56 AM.jpeg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
