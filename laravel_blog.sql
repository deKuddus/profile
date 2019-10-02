-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 02, 2019 at 10:34 AM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kuddus', 'kuddus@gmail.com', '$2b$10$MR4rPYoAg.lpmOfeKgWTzOXvwMQ3dEIb4t3jorV4ypNQU6JnJ/8la', '3434343', 1, '2018-10-23 15:22:42', '2018-10-23 16:27:07'),
(2, 'Kuddus', 'maji@gmail.com', '$2y$10$dEgk2XIjevI1we.Cp4wo5OuHz0cNijHKyNvTgR.LtfxJCW7LETgGW', '123456789', 1, '2019-01-12 12:04:26', '2019-01-12 12:06:09'),
(4, 'asdfsadf', 'ma.kuddus37@gmail.com', '$2y$10$3EgZMFSkRB37HqfNpapE.OY9ynVysyrqsWJI62eFuengtNynmBET6', '34567890', 0, '2019-08-29 12:12:52', '2019-08-29 12:12:52'),
(5, 'safsadf', 'admin@admin.com', '$2y$10$H.U2EHA1ylV9fE4U5lVwB.HhNC3Lq.Ou3Be3NZIv8zAfo/BF6CXom', '34567', 0, '2019-08-29 12:15:52', '2019-08-29 12:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`id`, `admin_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'this is news category', 'news-slug', '2018-10-23 16:37:21', '2018-10-23 16:37:21'),
(2, 'this is news category', 'news-slug', '2018-10-23 16:37:28', '2018-10-23 16:37:28'),
(3, 'web development', 'web-slug', '2018-11-02 09:02:52', '2018-11-02 09:02:52'),
(4, 'php language', 'php-slug', '2018-11-02 09:03:10', '2018-11-02 09:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_posts`
--

INSERT INTO `category_posts` (`category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(3, 4, '2018-11-02 10:15:41', '2018-11-02 10:15:41'),
(4, 4, '2018-11-02 10:15:41', '2018-11-02 10:15:41'),
(3, 6, '2018-11-02 13:37:48', '2018-11-02 13:37:48'),
(4, 6, '2018-11-02 13:37:48', '2018-11-02 13:37:48'),
(3, 7, '2018-11-04 15:13:33', '2018-11-04 15:13:33'),
(4, 7, '2018-11-04 15:13:33', '2018-11-04 15:13:33'),
(2, 8, '2019-08-29 11:21:16', '2019-08-29 11:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'kuddus', 'kuddus@gmail.com', 'adfadsf', '2019-08-31 10:35:40', '2019-08-31 10:35:40'),
(2, 'safasdf', 'admin@admin.com', 'dsafsadf', '2019-08-31 10:48:34', '2019-08-31 10:48:34'),
(3, 'Test Weight', 'ma.kuddus37@gmail.com', 'asdfasdf', '2019-08-31 11:54:05', '2019-08-31 11:54:05'),
(4, 'safadsf', 'test@gmail.com', 'asdfsd', '2019-08-31 11:59:17', '2019-08-31 11:59:17'),
(5, 'fsdaf', 'test@gmail.com', 'asdfdsf', '2019-08-31 12:01:27', '2019-08-31 12:01:27'),
(6, 'sdafasd', 'ma.kuddus37@gmail.com', 'asdfsad', '2019-08-31 12:01:44', '2019-08-31 12:01:44'),
(7, 'adfdasf', 'admin@admin.com', 'adsfasdf', '2019-08-31 12:47:15', '2019-08-31 12:47:15'),
(8, 'sdafasd', 'admin@admin.com', 'asdfas', '2019-08-31 12:49:42', '2019-08-31 12:49:42'),
(9, 'adsfasd', 'test@gmail.com', 'asdfasd', '2019-08-31 12:50:12', '2019-08-31 12:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 4, 1, '2018-11-02 13:33:10', '2018-11-02 13:33:10'),
(4, 3, 1, '2018-11-02 13:33:11', '2018-11-02 13:33:11'),
(5, 2, 1, '2018-11-02 13:33:13', '2018-11-02 13:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_26_153228_create_posts_table', 1),
(4, '2018_02_26_153935_create_tags_table', 1),
(5, '2018_02_26_154123_create_categories_table', 1),
(6, '2018_02_26_154412_create_category_posts_table', 1),
(7, '2018_03_01_191723_create_post_tags_table', 1),
(8, '2018_03_01_191758_create_admins_table', 1),
(9, '2018_03_01_191859_create_role_table', 1),
(10, '2018_03_01_191946_create_admins_role_table', 1),
(11, '2018_03_11_084907_create_permission_table', 1),
(12, '2018_03_25_163644_create_likes_table', 1),
(13, '2018_03_11_084907_create_contact_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `permission_for`, `created_at`, `updated_at`) VALUES
(4, 'post-update', 'post', '2018-10-23 15:58:55', '2018-10-23 15:58:55'),
(5, 'post-delete', 'post', '2018-10-23 15:59:06', '2018-10-23 15:59:06'),
(6, 'user-create', 'user', '2018-10-23 15:59:19', '2018-10-23 15:59:19'),
(7, 'user-delete', 'user', '2018-10-23 15:59:31', '2018-10-23 15:59:31'),
(8, 'user-update', 'user', '2018-10-23 15:59:39', '2018-10-23 16:00:49'),
(9, 'tag-crud', 'other', '2018-10-23 15:59:48', '2018-10-23 15:59:48'),
(10, 'category-crud', 'other', '2018-10-23 16:00:00', '2018-10-23 16:00:00'),
(11, 'post-publish', 'post', '2018-10-23 16:00:35', '2018-10-23 16:00:35'),
(12, 'post-create', 'post', '2018-10-23 16:22:19', '2018-10-23 16:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 4),
(1, 5),
(1, 9),
(1, 10),
(2, 11),
(3, 4),
(3, 12),
(3, 9),
(3, 10),
(1, 12),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_val` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `like` int(11) DEFAULT NULL,
  `dislike` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `unique_val`, `body`, `status`, `posted_by`, `image`, `like`, `dislike`, `created_at`, `updated_at`) VALUES
(4, 'BUILD A CHAT APP WITH LARAVEL', 'A basic understanding of Laravel and Vue.js is needed to follow this tutorial.', 'build-a-chat-system-using-pushar', '<p>A basic understanding of Laravel and Vue.js is needed to follow this tutorial.</p>\r\n\r\n<p>Laravel makes it easy to build modern applications with realtime interactions by providing an event broadcasting system which allows developers to share the same event names between the server-side code and the client-side JavaScript application.</p>\r\n\r\n<p>Pusher, on the other hand, is an easy and reliable platform for building scalable realtime applications. Laravel provides support for Pusher out of the box, which makes building realtime applications with Laravel and Pusher seamless. In fact, Pusher has emerged as one of the Laravel community&rsquo;s preferred tools to make apps realtime, thanks to the support of Taylor Otwell, Jeffrey Way, Matt Stauffer, and many more.</p>\r\n\r\n<p>In this post, I will be showing you how to build a laravel chat application with Pusher. I will be using Vue.js as my JavaScript framework, although you can use the JavaScript framework of your choice or even jQuery and vanilla JavaScript.</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">laravel new laravel-chat\r\n</code></pre>\r\n\r\n<p>This will create a<span class=\"marker\">&nbsp;<code>laravel-chat</code></span>&nbsp;project within the directory where you ran the command above.</p>\r\n\r\n<p>Before we start using Laravel event broadcasting, we first need to register the&nbsp;<span class=\"marker\"><code>App\\Providers\\BroadcastServiceProvider</code></span>. Open&nbsp;<span class=\"marker\"><code>config/app.php</code></span><span class=\"marker\">&nbsp;</span>and uncomment the following line in the&nbsp;<code><span class=\"marker\">providers</span>&nbsp;</code>array.</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// App\\Providers\\BroadcastServiceProvider</code></pre>\r\n\r\n<p>We need to tell Laravel that we are using the Pusher driver in the&nbsp;<code>.<span class=\"marker\">env</span></code>&nbsp;file:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// .env\r\n\r\nBROADCAST_DRIVER=pusher</code></pre>\r\n\r\n<p>Though Laravel supports Pusher out of the box, we still need to install the Pusher PHP SDK. We can do this using composer:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">composer require pusher/pusher-php-server</code></pre>\r\n\r\n<p>Once the installation is done, we need to configure our Pusher app credentials in&nbsp;&nbsp;<span class=\"marker\"><code>config/broadcasting.php</code></span>. To get our Pusher app credential, we need to have a Pusher account.</p>\r\n\r\n<h2>SETTING UP PUSHER</h2>\r\n\r\n<p>If you don&#39;t have one already, create a free Pusher account at&nbsp;<a href=\"https://pusher.com/signup\">https://pusher.com/signup</a>&nbsp;then login to your dashboard and create an app.</p>\r\n\r\n<p>Now, let&#39;s fill in our Pusher app credentials. If you open the&nbsp;&nbsp;<code>config/broadcasting.php</code>, you&#39;ll notice that Laravel is pulling some of Pusher credential from the&nbsp;<code>.<span class=\"marker\">env</span></code>&nbsp;file:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// Don\'t add your credentials here!\r\n// config/broadcasting.php\r\n\r\n\'pusher\' =&gt; [\r\n  \'driver\' =&gt; \'pusher\',\r\n  \'key\' =&gt; env(\'PUSHER_APP_KEY\'),\r\n  \'secret\' =&gt; env(\'PUSHER_APP_SECRET\'),\r\n  \'app_id\' =&gt; env(\'PUSHER_APP_ID\'),\r\n  \'options\' =&gt; [],\r\n],</code></pre>\r\n\r\n<p>We need to modify the source a little bit here to get this to work. Modify the source so that it looks like this:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">  \'pusher\' =&gt; [\r\n      \'driver\' =&gt; \'pusher\',\r\n      \'key\' =&gt; env(\'PUSHER_APP_KEY\'),\r\n      \'secret\' =&gt; env(\'PUSHER_APP_SECRET\'),\r\n      \'app_id\' =&gt; env(\'PUSHER_APP_ID\'),\r\n      \'options\' =&gt; [\r\n          \'cluster\' =&gt; env(\'PUSHER_CLUSTER\'),\r\n          \'encrypted\' =&gt; true,\r\n      ],\r\n  ],</code></pre>\r\n\r\n<p>Then let&#39;s update the&nbsp;<code>.<span class=\"marker\">env</span></code>&nbsp;file to contain our Pusher app credentials (noting the added cluster credential, this won&#39;t be in your&nbsp;<code>.<span class=\"marker\">env</span></code>&nbsp;file as Laravel has not added this functionality yet:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// .env\r\n\r\nPUSHER_APP_ID=xxxxxx\r\nPUSHER_APP_KEY=xxxxxxxxxxxxxxxxxxxx\r\nPUSHER_APP_SECRET=xxxxxxxxxxxxxxxxxxxx\r\nPUSHER_CLUSTER=xx</code></pre>\r\n\r\n<p>Remember to replace the&nbsp;<span class=\"marker\"><code>x&nbsp;</code></span>s with your Pusher app credentials. You can find your app credentials under the&nbsp;<strong>Keys&nbsp;</strong>section on the&nbsp;<strong>Overview</strong>&nbsp;tab.</p>\r\n\r\n<p>Now that we&#39;ve set up the back-end of our project, let&#39;s move on to setting up the front-end. Laravel provides some front-end frameworks and libraries, including -&nbsp;<span class=\"marker\"><code>Bootstrap</code></span>,&nbsp;<span class=\"marker\"><code>Vuejs</code></span>&nbsp;and&nbsp;<span class=\"marker\"><code>Axios</code></span>&nbsp;which we&#39;ll be using in this tutorial.</p>\r\n\r\n<p>We&#39;ll also be making use of Laravel Mix, which is a wrapper around Webpack that will help us compile our CSS and JavaScript.</p>\r\n\r\n<p>But first, we need to install these dependencies through&nbsp;<span class=\"marker\"><code>NPM</code></span>:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">npm install</code></pre>\r\n\r\n<p>To subscribe and listen to events, Laravel provides Laravel Echo, which is a JavaScript library that makes it painless to subscribe to channels and listen for events broadcast by Laravel. We&#39;ll need to install it along with the Pusher JavaScript library:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">npm install --save laravel-echo pusher-js</code></pre>\r\n\r\n<p>Once installed, we need to tell Laravel Echo to use Pusher. At the bottom of the&nbsp;&nbsp;<span class=\"marker\"><code>resources/assets/js/bootstrap.js</code></span>&nbsp;file, Laravel have stubbed Echo integration though it is commented out. Simply uncomment the Laravel Echo section and update the details with:</p>\r\n\r\n<pre>\r\n<code class=\"language-javascript\">// resources/assets/js/bootstrap.js\r\n\r\nimport Echo from \"laravel-echo\"\r\n\r\nwindow.Echo = new Echo({\r\n    broadcaster: \'pusher\',\r\n    key: \'xxxxxxxxxxxxxxxxxxxx\',\r\n    cluster: \'eu\',\r\n    encrypted: true\r\n});</code></pre>\r\n\r\n<p>Remember to replace the&nbsp;<code>x</code>s with your Pusher app key. Also use the same&nbsp;<span class=\"marker\"><code>cluster</code></span>&nbsp;that you specified earlier in&nbsp;<span class=\"marker\"><code>config/broadcasting.php</code></span>.</p>\r\n\r\n<p>Now that we are done with setting up Laravel and Pusher and other dependencies, it time to start building our chat application.</p>\r\n\r\n<h2>AUTHENTICATING USERS</h2>\r\n\r\n<p>Our chat app will require users to be logged in before they can begin to chat. So, we need an authentication system, which with Laravel is as simple as running an&nbsp;<span class=\"marker\"><code>artisan</code></span>&nbsp;command in the terminal:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">php artisan make:auth</code></pre>\r\n\r\n<p>This will create the necessary routes, views and controllers needed for an authentication system.</p>\r\n\r\n<p>Before we go on to create users, we need to run the&nbsp;<span class=\"marker\"><code>users</code></span>&nbsp;migration that comes with a fresh installation of Laravel. But to do this, we first need to setup our database. Open the&nbsp;<code>.<span class=\"marker\">env</span></code>&nbsp;file and enter your database details:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// .env\r\n\r\nDB_CONNECTION=mysql\r\nDB_HOST=127.0.0.1\r\nDB_PORT=3306\r\nDB_DATABASE=laravel-chat\r\nDB_USERNAME=root\r\nDB_PASSWORD=root</code></pre>\r\n\r\n<p>Update with your own database details. Now, we can run our migration:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">php artisan migrate</code></pre>\r\n\r\n<p>There&#39;s a bug in Laravel 5.4 if you&#39;re running a version of MySQL older than 5.7.7 or MariaDB older than 10.2.2. More info&nbsp;<a href=\"https://github.com/laravel/framework/issues/17508\">here</a>. This can be fixed by replacing the&nbsp;<span class=\"marker\"><code>boot()</code></span>&nbsp;of&nbsp;<span class=\"marker\"><code>app/Providers/AppServiceProvider.php</code>&nbsp;</span>with:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// app/Providers/AppServiceProvider.php\r\n\r\n// remember to use\r\nIlluminate\\Support\\Facades\\Schema;\r\n\r\n/**\r\n * Bootstrap any application services.\r\n *\r\n * @return void\r\n */\r\npublic function boot()\r\n{\r\n  Schema::defaultStringLength(191);\r\n}</code></pre>\r\n\r\n<h2>MESSAGE MODEL AND MIGRATION</h2>\r\n\r\n<p>Create a&nbsp;<span class=\"marker\"><code>Message</code></span>&nbsp;model along with the migration file by running the command:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">php artisan make:model Message -m</code></pre>\r\n\r\n<p>Open the&nbsp;<span class=\"marker\"><code>Message</code></span>&nbsp;model and add the code below to it:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// app/Message.php\r\n\r\n/**\r\n * Fields that are mass assignable\r\n *\r\n * @var array\r\n */\r\nprotected $fillable = [\'message\'];</code></pre>\r\n\r\n<p>Within the<span class=\"marker\">&nbsp;databases/migrations</span>&nbsp; directory, open the&nbsp;<span class=\"marker\"><code>messages</code></span>&nbsp;table migration that was created when we ran the command above and update the&nbsp;<span class=\"marker\"><code>up</code></span>&nbsp;method with:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">Schema::create(\'messages\', function (Blueprint $table) {\r\n  $table-&gt;increments(\'id\');\r\n  $table-&gt;integer(\'user_id\')-&gt;unsigned();\r\n  $table-&gt;text(\'message\');\r\n  $table-&gt;timestamps();\r\n});</code></pre>\r\n\r\n<p>The&nbsp;<span class=\"marker\"><code>message</code></span>&nbsp;will have five columns: an auto increment&nbsp;<span class=\"marker\"><code>id</code></span>,&nbsp;<span class=\"marker\"><code>user_id</code></span>,&nbsp;<span class=\"marker\"><code>message</code></span>,&nbsp;<span class=\"marker\"><code>created_at</code></span>&nbsp;and&nbsp;<span class=\"marker\"><code>updated_at</code></span>. The&nbsp;<span class=\"marker\"><code>user_id</code></span>&nbsp;column will hold the ID of the user that sent a message and the&nbsp;<span class=\"marker\"><code>message</code></span>&nbsp;column will hold the actual message that was sent. Run the migration:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">php artisan migrate</code></pre>\r\n\r\n<h2>USER TO MESSAGE RELATIONSHIP</h2>\r\n\r\n<p>We need to setup the relationship between a user and a message. A user can send many messages while a particular message was sent by a user. So, the relationship between the user and message is a one to many relationship. To define this relationship, add the code below to&nbsp;<span class=\"marker\"><code>User</code></span>&nbsp;model:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// app/User.php\r\n\r\n/**\r\n * A user can have many messages\r\n *\r\n * @return \\Illuminate\\Database\\Eloquent\\Relations\\HasMany\r\n */\r\npublic function messages()\r\n{\r\n  return $this-&gt;hasMany(Message::class);\r\n}</code></pre>\r\n\r\n<p>Next, we need to define the inverse relationship by adding the code below to&nbsp;<span class=\"marker\"><code>Message</code></span>&nbsp;model:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// app/Message.php\r\n\r\n/**\r\n * A message belong to a user\r\n *\r\n * @return \\Illuminate\\Database\\Eloquent\\Relations\\BelongsTo\r\n */\r\npublic function user()\r\n{\r\n  return $this-&gt;belongsTo(User::class);\r\n}</code></pre>\r\n\r\n<h2>DEFINING APP ROUTES</h2>\r\n\r\n<p>Let&#39;s create the routes our chat app will need. Open&nbsp;<span class=\"marker\"><code>routes/web.php</code>&nbsp;</span>and replace the routes with the code below to define three simple routes:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// routes/web.php\r\n\r\nAuth::routes();\r\n\r\nRoute::get(\'/\', \'ChatsController@index\');\r\nRoute::get(\'messages\', \'ChatsController@fetchMessages\');\r\nRoute::post(\'messages\', \'ChatsController@sendMessage\');</code></pre>\r\n\r\n<p>The homepage will display chat messages and an input field to type new messages. A&nbsp;<span class=\"marker\"><code>GET</code></span>&nbsp;<span class=\"marker\"><code>messages</code></span>&nbsp;route will fetch all chat messages and a&nbsp;<span class=\"marker\"><code>POST</code></span>&nbsp;<span class=\"marker\"><code>messages</code></span>&nbsp;route will be used for sending new messages.</p>\r\n\r\n<p><strong>NOTE</strong>: Since we have removed the&nbsp;<span class=\"marker\"><code>/home</code></span>&nbsp;route, you might want to update the&nbsp;<span class=\"marker\"><code>redirectTo</code></span>&nbsp;property of both&nbsp;<span class=\"marker\"><code>app/Http/Controllers/Auth/LoginController.php</code></span>&nbsp;and&nbsp;<span class=\"marker\"><code>app/Http/Controllers/Auth/RegisterController.php</code></span>&nbsp;to:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">protected $redirectTo = \'/\';</code></pre>\r\n\r\n<h2>CHATSCONTROLLER</h2>\r\n\r\n<p>Now let&#39;s create the controller which will handle the logic of our chat app. Create a&nbsp;<span class=\"marker\"><code>ChatsController</code></span>&nbsp;with the command below:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">php artisan make:controller ChatsController</code></pre>\r\n\r\n<p>Open the new create&nbsp;<span class=\"marker\"><code>app/Http/Controllers/ChatsController.php</code></span>&nbsp;file and add the following code to it:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// app/Http/Controllers/ChatsController.php\r\n\r\nuse App\\Message;\r\nuse Illuminate\\Http\\Request;\r\nuse Illuminate\\Support\\Facades\\Auth;\r\n\r\npublic function __construct()\r\n{\r\n  $this-&gt;middleware(\'auth\');\r\n}\r\n\r\n/**\r\n * Show chats\r\n *\r\n * @return \\Illuminate\\Http\\Response\r\n */\r\npublic function index()\r\n{\r\n  return view(\'chat\');\r\n}\r\n\r\n/**\r\n * Fetch all messages\r\n *\r\n * @return Message\r\n */\r\npublic function fetchMessages()\r\n{\r\n  return Message::with(\'user\')-&gt;get();\r\n}\r\n\r\n/**\r\n * Persist message to database\r\n *\r\n * @param  Request $request\r\n * @return Response\r\n */\r\npublic function sendMessage(Request $request)\r\n{\r\n  $user = Auth::user();\r\n\r\n  $message = $user-&gt;messages()-&gt;create([\r\n    \'message\' =&gt; $request-&gt;input(\'message\')\r\n  ]);\r\n\r\n  return [\'status\' =&gt; \'Message Sent!\'];\r\n}</code></pre>\r\n\r\n<p>Using the&nbsp;<span class=\"marker\"><code>auth</code></span>&nbsp;middleware in&nbsp;<span class=\"marker\"><code>ChatsController</code></span>&#39;s&nbsp;<span class=\"marker\"><code>__contruct()</code></span>&nbsp;indicates that all the methods with the controller will only be accessible to authorized users. Then the&nbsp;<span class=\"marker\"><code>index()</code></span><span class=\"marker\">&nbsp;</span>will simply return a view file which we will create shortly. The&nbsp;&nbsp;<span class=\"marker\"><code>fetchMessages()</code></span>&nbsp;return a&nbsp;<span class=\"marker\"><code>JSON</code></span>&nbsp;of all messages along the their users. Lastly, the&nbsp;<span class=\"marker\"><code>sendMessage()</code></span>&nbsp;will persist the message into the database and return a status message.</p>\r\n\r\n<h2>CREATING THE CHAT APP VIEW</h2>\r\n\r\n<p>For the chat app view, we&#39;ll be making use of&nbsp;<a href=\"http://bootsnipp.com/snippets/featured/collapsible-chat-widget\">Bootsnipp chat snippet</a>&nbsp;with some few modifications.</p>\r\n\r\n<p>Create a new&nbsp;<span class=\"marker\"><code>resources/views/chat.blade.php</code></span>&nbsp;file and paste into it:</p>\r\n\r\n<pre>\r\n<code class=\"language-javascript\">&lt;!-- resources/views/chat.blade.php --&gt;\r\n\r\n@extends(\'layouts.app\')\r\n\r\n@section(\'content\')\r\n\r\n&lt;div class=\"container\"&gt;\r\n    &lt;div class=\"row\"&gt;\r\n        &lt;div class=\"col-md-8 col-md-offset-2\"&gt;\r\n            &lt;div class=\"panel panel-default\"&gt;\r\n                &lt;div class=\"panel-heading\"&gt;Chats&lt;/div&gt;\r\n\r\n                &lt;div class=\"panel-body\"&gt;\r\n                    &lt;chat-messages :messages=\"messages\"&gt;&lt;/chat-messages&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=\"panel-footer\"&gt;\r\n                    &lt;chat-form\r\n                        v-on:messagesent=\"addMessage\"\r\n                        :user=\"{{ Auth::user() }}\"\r\n                    &gt;&lt;/chat-form&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;\r\n@endsection\r\n</code></pre>\r\n\r\n<p>Notice we have some custom tags with the&nbsp;<span class=\"marker\"><code>chat</code></span>&nbsp;view, these are&nbsp;<span class=\"marker\"><code>Vue</code></span>&nbsp;components which we&#39;ll create soon. The&nbsp;<span class=\"marker\"><code>chat-messages</code></span>&nbsp;component will display our chat messages and the&nbsp;<span class=\"marker\"><code>chat-form</code></span>&nbsp;will provide an input field and a button to send the messages.</p>\r\n\r\n<p>Before we go to create our&nbsp;<span class=\"marker\"><code>Vue</code></span>&nbsp;component, let&#39;s add the styles for the&nbsp;<span class=\"marker\"><code>chat</code></span>&nbsp;view. Open&nbsp;<span class=\"marker\"><code>resources/views/layouts/app.blade.php</code></span>&nbsp;(which was created when we ran&nbsp;<span class=\"marker\"><code>make:auth</code></span>) and add the code below just after the styles link:</p>\r\n\r\n<pre>\r\n<code class=\"language-css\">&lt;!-- resources/views/layouts/app.blade.php --&gt;\r\n\r\n\r\n  .chat {\r\n    list-style: none;\r\n    margin: 0;\r\n    padding: 0;\r\n  }\r\n\r\n  .chat li {\r\n    margin-bottom: 10px;\r\n    padding-bottom: 5px;\r\n    border-bottom: 1px dotted #B3A9A9;\r\n  }\r\n\r\n  .chat li .chat-body p {\r\n    margin: 0;\r\n    color: #777777;\r\n  }\r\n\r\n  .panel-body {\r\n    overflow-y: scroll;\r\n    height: 350px;\r\n  }\r\n\r\n  ::-webkit-scrollbar-track {\r\n    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);\r\n    background-color: #F5F5F5;\r\n  }\r\n\r\n  ::-webkit-scrollbar {\r\n    width: 12px;\r\n    background-color: #F5F5F5;\r\n  }\r\n\r\n  ::-webkit-scrollbar-thumb {\r\n    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);\r\n    background-color: #555;\r\n  }\r\n</code></pre>\r\n\r\n<p>Looking at the&nbsp;<span class=\"marker\"><code>resources/assets/js/bootstrap.js</code></span>, you will notice that Laravel has set up some of the front-end dependencies (jQuery, Bootstrap, Lodash, Vue, Axios, Echo) that are included out of the box. We can start using&nbsp;<span class=\"marker\"><code>Vue</code></span>&nbsp;without any further setup.</p>\r\n\r\n<p>Create a new&nbsp;&nbsp;<span class=\"marker\"><code>ChatMessages.vue</code></span>&nbsp; file within&nbsp;&nbsp;<span class=\"marker\"><code>resources/assets/js/components</code>&nbsp;&nbsp;</span>and paste the code below into it:</p>\r\n\r\n<pre>\r\n<code class=\"language-javascript\">// resources/assets/js/components/ChatMessages.vue\r\n\r\n&lt;template&gt;\r\n    &lt;ul class=\"chat\"&gt;\r\n        &lt;li class=\"left clearfix\" v-for=\"message in messages\"&gt;\r\n            &lt;div class=\"chat-body clearfix\"&gt;\r\n                &lt;div class=\"header\"&gt;\r\n                    &lt;strong class=\"primary-font\"&gt;\r\n                        {{ message.user.name }}\r\n                    &lt;/strong&gt;\r\n                &lt;/div&gt;\r\n                &lt;p&gt;\r\n                    {{ message.message }}\r\n                &lt;/p&gt;\r\n            &lt;/div&gt;\r\n        &lt;/li&gt;\r\n    &lt;/ul&gt;\r\n&lt;/template&gt;\r\n\r\n&lt;script&gt;\r\n  export default {\r\n    props: [\'messages\']\r\n  };\r\n&lt;/script&gt;\r\n</code></pre>\r\n\r\n<p>This component accepts an array of messages as&nbsp;<span class=\"marker\"><code>props</code></span>, loops through them and displays the name of the user who sent the message and the message body.</p>\r\n\r\n<p>Next, create a new&nbsp;<span class=\"marker\"><code>ChatForm.vue</code></span>&nbsp;file within&nbsp;<span class=\"marker\"><code>resources/assets/js/components</code></span>&nbsp;and paste the code below into it:</p>\r\n\r\n<pre>\r\n<code class=\"language-javascript\">// resources/assets/js/components/ChatForm.vue\r\n&lt;template&gt;\r\n    &lt;div class=\"input-group\"&gt;\r\n        &lt;input id=\"btn-input\" type=\"text\" name=\"message\" class=\"form-control input-sm\" placeholder=\"Type your message here...\" v-model=\"newMessage\" @keyup.enter=\"sendMessage\"&gt;\r\n\r\n        &lt;span class=\"input-group-btn\"&gt;\r\n            &lt;button class=\"btn btn-primary btn-sm\" id=\"btn-chat\" @click=\"sendMessage\"&gt;\r\n                Send\r\n            &lt;/button&gt;\r\n        &lt;/span&gt;\r\n    &lt;/div&gt;\r\n&lt;/template&gt;\r\n\r\n&lt;script&gt;\r\n    export default {\r\n        props: [\'user\'],\r\n\r\n        data() {\r\n            return {\r\n                newMessage: \'\'\r\n            }\r\n        },\r\n\r\n        methods: {\r\n            sendMessage() {\r\n                this.$emit(\'messagesent\', {\r\n                    user: this.user,\r\n                    message: this.newMessage\r\n                });\r\n\r\n                this.newMessage = \'\'\r\n            }\r\n        }    \r\n    }\r\n&lt;/script&gt;</code></pre>\r\n\r\n<p>The&nbsp;<span class=\"marker\"><code>ChatForm</code></span>&nbsp;component displays an input field and a send button. It accepts the authenticated user as&nbsp;<span class=\"marker\"><code>props</code></span>. It also contains&nbsp;<span class=\"marker\"><code>newMessage</code></span>&nbsp;data which is bound to the input field. When the send button is clicked or the enter key is pressed on the input field, a&nbsp;<span class=\"marker\"><code>sendMessage()</code>&nbsp;i</span>s called. The&nbsp;<span class=\"marker\"><code>sendMessage()</code></span>&nbsp;simply triggers a&nbsp;<span class=\"marker\"><code>messagesent</code></span>&nbsp;event which passes along the message that was sent by the user to the root&nbsp;<span class=\"marker\"><code>Vue</code></span>&nbsp;instance (which will handle the actual sending of the message) and finally clear the input filed.</p>\r\n\r\n<p>Next, we need to register our component in the root&nbsp;<span class=\"marker\"><code>Vue</code></span>&nbsp;instance. Open the&nbsp;<span class=\"marker\"><code>resources/assets/js/app.js</code>&nbsp;</span>and update with code below:</p>\r\n\r\n<pre>\r\n<code class=\"language-javascript\">// resources/assets/js/app.js\r\n\r\nrequire(\'./bootstrap\');\r\n\r\nVue.component(\'chat-messages\', require(\'./components/ChatMessages.vue\'));\r\nVue.component(\'chat-form\', require(\'./components/ChatForm.vue\'));\r\n\r\nconst app = new Vue({\r\n    el: \'#app\',\r\n\r\n    data: {\r\n        messages: []\r\n    },\r\n\r\n    created() {\r\n        this.fetchMessages();\r\n    },\r\n\r\n    methods: {\r\n        fetchMessages() {\r\n            axios.get(\'/messages\').then(response =&gt; {\r\n                this.messages = response.data;\r\n            });\r\n        },\r\n\r\n        addMessage(message) {\r\n            this.messages.push(message);\r\n\r\n            axios.post(\'/messages\', message).then(response =&gt; {\r\n              console.log(response.data);\r\n            });\r\n        }\r\n    }\r\n});</code></pre>\r\n\r\n<p>Once the&nbsp;<span class=\"marker\"><code>Vue</code></span>&nbsp;instance is created, using&nbsp;<span class=\"marker\"><code>Axios</code></span>, we make a&nbsp;<span class=\"marker\"><code>GET</code></span>&nbsp;request to the&nbsp;<code>messages</code>&nbsp;route and fetch all the messages then pass it to the <span class=\"marker\">messages</span> array that will be displayed on the&nbsp;<span class=\"marker\"><code>chat</code></span>&nbsp;view. The&nbsp;<span class=\"marker\"><code>addMessage()</code></span><span class=\"marker\">&nbsp;</span>receives the message that was emitted from the&nbsp;<span class=\"marker\"><code>ChatForm</code></span>&nbsp;component, pushes it to the messages array and makes a&nbsp;<span class=\"marker\"><code>POST</code></span>&nbsp;request to the&nbsp;<span class=\"marker\"><code>messages</code></span>&nbsp;route with the message.</p>\r\n\r\n<h2>BROADCASTING MESSAGE SENT EVENT</h2>\r\n\r\n<p>To add the realtime interactions to our chat app, we need to broadcast some kind of events based on some activities. In our case, we&#39;ll fire a&nbsp;<span class=\"marker\"><code>MessageSent</code></span>&nbsp;when a user sends a message. First, we need to create an event, we&#39;ll call it&nbsp;<span class=\"marker\"><code>MessageSent</code></span>:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">php artisan make:event MessageSent</code></pre>\r\n\r\n<p>This will create a new&nbsp;<span class=\"marker\"><code>MessageSent</code></span>&nbsp;event class within the&nbsp;<span class=\"marker\"><code>app/Events</code></span><span class=\"marker\">&nbsp;</span>directory. This class must implement the&nbsp;<span class=\"marker\"><code>ShouldBroadcast</code></span>&nbsp;interface. The class should look like:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// app/Events/MessageSent.php\r\n\r\nuse App\\User;\r\nuse App\\Message;\r\nuse Illuminate\\Broadcasting\\Channel;\r\nuse Illuminate\\Queue\\SerializesModels;\r\nuse Illuminate\\Broadcasting\\PrivateChannel;\r\nuse Illuminate\\Broadcasting\\PresenceChannel;\r\nuse Illuminate\\Foundation\\Events\\Dispatchable;\r\nuse Illuminate\\Broadcasting\\InteractsWithSockets;\r\nuse Illuminate\\Contracts\\Broadcasting\\ShouldBroadcast;\r\n\r\nclass MessageSent implements ShouldBroadcast\r\n{\r\n    use Dispatchable, InteractsWithSockets, SerializesModels;\r\n\r\n    /**\r\n     * User that sent the message\r\n     *\r\n     * @var User\r\n     */\r\n    public $user;\r\n\r\n    /**\r\n     * Message details\r\n     *\r\n     * @var Message\r\n     */\r\n    public $message;\r\n\r\n    /**\r\n     * Create a new event instance.\r\n     *\r\n     * @return void\r\n     */\r\n    public function __construct(User $user, Message $message)\r\n    {\r\n        $this-&gt;user = $user;\r\n        $this-&gt;message = $message;\r\n    }\r\n\r\n    /**\r\n     * Get the channels the event should broadcast on.\r\n     *\r\n     * @return Channel|array\r\n     */\r\n    public function broadcastOn()\r\n    {\r\n        return new PrivateChannel(\'chat\');\r\n    }\r\n}</code></pre>\r\n\r\n<p>We defined two public properties that will be the data that will be passed along to the channel we are broadcasting to.</p>\r\n\r\n<p><strong>NOTE:</strong>&nbsp;These properties must be&nbsp;<strong>public</strong>&nbsp;for it to be passed along to the channel.</p>\r\n\r\n<p>Since our <span class=\"marker\">chat</span> app is an authenticated-only app, we create a private channel called&nbsp;<code>Chat</code>, which only authenticated users will be able to connect to. Using the&nbsp;<span class=\"marker\"><code>PrivateChannel</code></span>&nbsp;class, Laravel is smart enough to know that we are creating a private channel, so don&#39;t prefix the channel name with&nbsp;<code><span class=\"marker\">private</span>-</code>&nbsp;(as specified by Pusher), Laravel will add the&nbsp;<code><span class=\"marker\">private</span>-</code>&nbsp;prefix under the hood.</p>\r\n\r\n<p>Next, we need to update the&nbsp;<code>sendMessage()</code>&nbsp;of&nbsp;<code>ChatsController</code>&nbsp;to broadcast the&nbsp;<code>MessageSent</code>&nbsp;event:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// app/Http/Controllers/ChatsController.php\r\n\r\n//remember to use\r\nuse App\\Events\\MessageSent;\r\n\r\n/**\r\n * Persist message to database\r\n *\r\n * @param  Request $request\r\n * @return Response\r\n */\r\npublic function sendMessage(Request $request)\r\n{\r\n  $user = Auth::user();\r\n\r\n  $message = $user-&gt;messages()-&gt;create([\r\n    \'message\' =&gt; $request-&gt;input(\'message\')\r\n  ]);\r\n\r\n  broadcast(new MessageSent($user, $message))-&gt;toOthers();\r\n\r\n  return [\'status\' =&gt; \'Message Sent!\'];\r\n}</code></pre>\r\n\r\n<p>Since we created a private channel, only authenticated users will be able to listen on the&nbsp;<span class=\"marker\"><code>chat</code></span>&nbsp;channel. So, we need a way to authorize that the currently authenticated user can actually listen on the channel. This can be done by in the&nbsp;<span class=\"marker\"><code>routes/channels.php</code></span>&nbsp;file:</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// routes/channels.php\r\n\r\nBroadcast::channel(\'chat\', function ($user) {\r\n  return Auth::check();\r\n});</code></pre>\r\n\r\n<p>We pass to the&nbsp;<span class=\"marker\"><code>channel(),</code></span>&nbsp;the name of our channel and a callback function that will either return&nbsp;<span class=\"marker\"><code>true</code></span>&nbsp;or&nbsp;<code><span class=\"marker\">false</span>&nbsp;</code>depending on whether the current user is authenticated.</p>\r\n\r\n<p>Now when a message is sent, the&nbsp;<span class=\"marker\"><code>MessageSent</code></span>&nbsp;event will be broadcast to Pusher. We are using the&nbsp;<code><span class=\"marker\">toOthers()</span>&nbsp;</code>which allows us to exclude the current user from the broadcast&#39;s recipients.</p>\r\n\r\n<h2>LISTENING FOR MESSAGE SENT EVENT</h2>\r\n\r\n<p>Once the&nbsp;<span class=\"marker\"><code>MessageSent</code></span>&nbsp;event is broadcast, we need to listen for this event so we can update the chat messages with the newly sent message. We can do so by adding the code snippet below to&nbsp;<span class=\"marker\"><code>created()</code></span>&nbsp;of&nbsp;<span class=\"marker\"><code>resources/assets/js/app.js</code></span>&nbsp;just after&nbsp;<span class=\"marker\"><code>this.fetchMessages()</code></span>:</p>\r\n\r\n<pre>\r\n<code class=\"language-javascript\">// resources/assets/js/app.js\r\n\r\nEcho.private(\'chat\')\r\n  .listen(\'MessageSent\', (e) =&gt; {\r\n    this.messages.push({\r\n      message: e.message.message,\r\n      user: e.user\r\n    });\r\n  });</code></pre>\r\n\r\n<p>We subscribe to the&nbsp;<span class=\"marker\"><code>chat</code></span>&nbsp;channel using Echo&#39;s&nbsp;<span class=\"marker\"><code>private()</code></span><span class=\"marker\">&nbsp;</span>since the channel is a private channel. Once subscribed, we listen for the&nbsp;<span class=\"marker\"><code>MessageSent</code></span>&nbsp;and based on this, update the chat messages array with the newly sent message.</p>\r\n\r\n<p>Before testing out our chat app, we need to compile the JavaScript files using Laravel Mix using:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">npm run dev</code></pre>\r\n\r\n<p>Now we can start our chat app by running:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">php artisan serve</code></pre>\r\n\r\n<p>Our chat app is done as we can now send and receive messages in realtime.</p>', 1, NULL, 'public/DPTEeym62PJlzcJvijTNTqpHWl91pWzMIs7ch4iT.png', NULL, NULL, '2018-11-02 10:15:40', '2018-11-02 12:46:51'),
(6, 'How to send mail using queue in Laravel 5.7?', 'mail send using laravel queue', 'how -to-send-an-email-using-queue-in-laravel', '<p>In this tutorial, i will demonstrate how to send email using queue with laravel 5.7. I will show how to use queue jobs in laravel from scratch. we will simple create email send using queue in this article.</p>\r\n\r\n<p>Sometime, you see some process take time to load like email send, payment gateway etc. When you send email for verification or send invoice then it load time to send mail because it is services. If you don&#39;t want to wait to user for send email or other process on loading server side process then you can use queue. because it&#39;s very fast and visitor will happy to see loading time.</p>\r\n\r\n<p>Here, i am going to share very simple example to create queue with database driver for test email sending. You can definitely understand how to work queue and how it&#39;s easy. If you haven&#39;t used before then don&#39;t worry, here if from starch and very simple. This is for startup developer on queue task. Just see bellow step:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">\r\n<h1>Content Overview</h1>\r\n\r\n<p>Step 1: Setup Laravel 5.7<br />\r\nStep 2: Create Mail Setup<br />\r\n&nbsp;Step 3: Configuration of Queue<br />\r\nStep 4: Create Queue Job<br />\r\nStep 5: Test Queue Job</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>Step 1: Setup Laravel 5.7</h1>\r\n\r\n<p>first of all we need to get fresh Laravel 5.7 version application using bellow command, So open your terminal OR command prompt and run bellow command:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">composer create-project --prefer-dist laravel/laravel blog</code></pre>\r\n\r\n<h1>Step 2: Create Mail Setup</h1>\r\n\r\n<p>We are going from scratch and in first step, we will create email for testing using Laravel Mail facade. So let&#39;s simple run bellow command.</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">php artisan make:mail SendEmailTest</code></pre>\r\n\r\n<p>Now you will have new folder &quot;Mail&quot; in app directory with SendEmailTest.php file. So let&#39;s simply copy bellow code and past on that file.</p>\r\n\r\n<p><strong><span class=\"marker\">app/Mail/SendEmailTest.php</span></strong></p>\r\n\r\n<pre>\r\n<code class=\"language-php\">\r\n  \r\nnamespace App\\Mail;\r\n  \r\nuse Illuminate\\Bus\\Queueable;\r\nuse Illuminate\\Mail\\Mailable;\r\nuse Illuminate\\Queue\\SerializesModels;\r\nuse Illuminate\\Contracts\\Queue\\ShouldQueue;\r\n  \r\nclass SendEmailTest extends Mailable\r\n{\r\n    use Queueable, SerializesModels;\r\n  \r\n    /**\r\n     * Create a new message instance.\r\n     *\r\n     * @return void\r\n     */\r\n    public function __construct()\r\n    {\r\n          \r\n    }\r\n  \r\n    /**\r\n     * Build the message.\r\n     *\r\n     * @return $this\r\n     */\r\n    public function build()\r\n    {\r\n        return $this-&gt;view(\'emails.test\');\r\n    }\r\n}</code></pre>\r\n\r\n<p>Ok, now we require to create email view using blade file. So we will create simple view file and copy bellow code om following path.</p>\r\n\r\n<p><strong><span class=\"marker\">resources/views/emails/test.blade.php</span></strong></p>\r\n\r\n<pre>\r\n<code class=\"language-markup\">&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n	&lt;title&gt;How to send mail using queue in Laravel 5.7? - ItSolutionStuff.com&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n   \r\n&lt;center&gt;\r\n&lt;h2 style=\"padding: 23px;background: #b3deb8a1;border-bottom: 6px green solid;\"&gt;\r\n	&lt;a href=\"https://facebook.com\"&gt;Visit Our Website : facebook.com&lt;/a&gt;\r\n&lt;/h2&gt;\r\n&lt;/center&gt;\r\n  \r\n&lt;p&gt;Hi, Sir&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n\r\n \r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n  \r\n&lt;strong&gt;Thank you Sir. :)&lt;/strong&gt;\r\n  \r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<p>after configuration of view file, we have to setup for email send, So let&#39; set configuration in .<span class=\"marker\">env</span> file:</p>\r\n\r\n<p><span class=\"marker\">.env</span></p>\r\n\r\n<pre>\r\n<code class=\"language-php\">MAIL_DRIVER=smtp\r\nMAIL_HOST=smtp.gmail.com\r\nMAIL_PORT=587\r\nMAIL_USERNAME=xyz@gmail.com\r\nMAIL_PASSWORD=123456\r\nMAIL_ENCRYPTION=tls</code></pre>\r\n\r\n<h1>Step 3: Configuration of Queue</h1>\r\n\r\n<p>Now in next step, we will make configuration on queue driver so first of all, we will set queue driver &quot;database&quot;. You can set as you want also we will define driver as redis too. So here define database driver on &quot;.env&quot; file:</p>\r\n\r\n<p><strong><span class=\"marker\">.env</span></strong></p>\r\n\r\n<pre>\r\n<code class=\"language-php\">QUEUE_CONNECTION=database</code></pre>\r\n\r\n<p>After that we need to generate migration and create tables for queue. So let&#39;s run bellow command for queue database tables:</p>\r\n\r\n<p><strong><span class=\"marker\">Generate Migration:</span></strong></p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">php artisan queue:table</code></pre>\r\n\r\n<p><strong><span class=\"marker\">Run Migration:</span></strong></p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">php artisan migrate</code></pre>\r\n\r\n<h1>Step 4: Create Queue Job</h1>\r\n\r\n<p>now we will create queue job bey following command, this command will create queue job file with Queueable. So let&#39;s run below command:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">php artisan make:job SendEmailJob</code></pre>\r\n\r\n<p>now you have SendEmailJob.php file in &quot;Jobs&quot; directory. So let&#39;s see that file and put bellow code on that file.</p>\r\n\r\n<p><strong><span class=\"marker\">app/Jobs/SendEmailJob.php</span></strong></p>\r\n\r\n<pre>\r\n<code class=\"language-php\">\r\n  \r\nnamespace App\\Jobs;\r\n   \r\nuse Illuminate\\Bus\\Queueable;\r\nuse Illuminate\\Queue\\SerializesModels;\r\nuse Illuminate\\Queue\\InteractsWithQueue;\r\nuse Illuminate\\Contracts\\Queue\\ShouldQueue;\r\nuse Illuminate\\Foundation\\Bus\\Dispatchable;\r\nuse App\\Mail\\SendEmailTest;\r\nuse Mail;\r\n   \r\nclass SendEmailJob implements ShouldQueue\r\n{\r\n    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;\r\n  \r\n    protected $details;\r\n  \r\n    /**\r\n     * Create a new job instance.\r\n     *\r\n     * @return void\r\n     */\r\n    public function __construct($details)\r\n    {\r\n        $this-&gt;details = $details;\r\n    }\r\n   \r\n    /**\r\n     * Execute the job.\r\n     *\r\n     * @return void\r\n     */\r\n    public function handle()\r\n    {\r\n        $email = new SendEmailTest();\r\n        Mail::to($this-&gt;details[\'email\'])-&gt;send($email);\r\n    }\r\n}</code></pre>\r\n\r\n<h1><strong>Step 5: Test Queue Job</strong></h1>\r\n\r\n<p>Now time is use and test created queue job, so let&#39;s simple create route with following code for testing created queue.</p>\r\n\r\n<p><strong><span class=\"marker\">routes/web.php</span></strong></p>\r\n\r\n<pre>\r\n<code class=\"language-php\">Route::get(\'email-test\', function(){\r\n  \r\n	$details[\'email\'] = \'your_email@gmail.com\';\r\n  \r\n    dispatch(new App\\Jobs\\SendEmailJob($details));\r\n  \r\n    dd(\'done\');\r\n});</code></pre>\r\n\r\n<p>Ok route is defined, you can watch your queue process using laravel queue command, so let&#39;s run bellow command:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">php artisan queue:listen</code></pre>\r\n\r\n<p>Now run your project and bellow link:</p>\r\n\r\n<pre>\r\n<code class=\"language-http\">http://localhost:8000/email-test</code></pre>\r\n\r\n<p>I hope it can help you...</p>', 1, NULL, 'public/DPTEeym62PJlzcJvijTNTqpHWl91pWzMIs7ch4iT.png', NULL, NULL, '2018-11-02 13:37:48', '2018-11-02 14:04:41');
INSERT INTO `posts` (`id`, `title`, `subtitle`, `unique_val`, `body`, `status`, `posted_by`, `image`, `like`, `dislike`, `created_at`, `updated_at`) VALUES
(7, 'Integrate Laravel Paypal Payment Gateway For Fast Online Payments', 'paypal integration in Laravel', 'how-to-integrate-paypal-payment-gateway-in-laravel-', '<p>&nbsp;</p>\r\n\r\n<p>If you are operative in the e-commerce circuit, then you must have known the importance of online transaction. As it is the most viable and fastest way to settle payments anywhere in the world. And because of evolving internet technology, today anyone can easily buy or sell products and can settle payments with online transaction all around the world.</p>\r\n\r\n<p>But online transaction brings high risks of serious security threats also. Therefore robust security mechanism for online payments is required to avoid potential malicious attempts. That is where the importance of Laravel Paypal payment gateways comes into play. As these gateways helps businesses to focus and capitalize on the benefits of online transactions, while keeping their customers and systems secured from the external threats.</p>\r\n\r\n<h1>Payment Gateway</h1>\r\n\r\n<p>Payment gateway is a typical e-commerce service that helps process credit card payments for online businesses. The main functionality of Payment gateways is that they facilitate online transactions by transferring confidential funds information between payment portals and front end funds processors/banks.</p>\r\n\r\n<h1>How it works?</h1>\r\n\r\n<p>The basic responsibility of payment gateways is to authorize funds transaction between clients and merchants. Below are the intrinsic steps on how payment gateways works:</p>\r\n\r\n<p><strong>Step 1:</strong>&nbsp;The process starts when a customer first visits the website and places an order for the respective products through checkout button.</p>\r\n\r\n<p><strong>Step 2:</strong>&nbsp;Next the merchant will send the details of that order to the payment gateway and then after the transaction is sent to the issuing bank, so that it can authorize the transaction.</p>\r\n\r\n<p><strong>Step 3:</strong>&nbsp;Once completing the authentication process of transaction, the customer&rsquo;s issuing bank approves or declines the transaction based on the available funds in the customer&rsquo;s account.</p>\r\n\r\n<p><strong>Step 4:</strong>&nbsp;Then after the payment gateway sends that message to the merchant.</p>\r\n\r\n<p><strong>Step 5:</strong>&nbsp;The bank settles the transaction amount with the payment gateway and the payment gateway settles the money with the merchant.</p>\r\n\r\n<p>In the world of e-commerce, Laravel payment gateways plays a vital role in settling up online transactions between customers and merchants. Because Payment gateways are solely responsible for the authorization of that transaction. Hence are developed in a very protective manner to cover all the possible security checks. Currently PayPal, Skrill, Stripe and Square are the popular payment gateway methods. Because their payment security mechanisms and reliable services are rated top among the list.</p>\r\n\r\n<p>So in this article, i will demonstrate how to deploy PayPal payment gateway in a Laravel app to make its funds transaction safe and secured.</p>\r\n\r\n<h1>Config PayPal in Laravel application</h1>\r\n\r\n<p>For Laravel payment gateway integration<em>,</em>&nbsp;first install the PayPal package in your app using the composer command. Open your SSH terminal and paste the following command under public_html/paypal_project.</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">composer require paypal/rest-api-sdk-php</code></pre>\r\n\r\n<h1>Create PayPal Account</h1>\r\n\r\n<p>Visit Developer.paypal.com to create your business account, so that you can buy/sell products easily over the internet and transfer funds to your account.</p>\r\n\r\n<p>Next create a Paypal developer mode and create a sandbox account to get important credentials like client_key and secret key, to test its integration with your Laravel app.</p>\r\n\r\n<p>After creating your app successfully, click on it and it will show you client_id and secret keys. Copy these credentials and paste them in your&nbsp;<span class=\"marker\"><strong><em>.env</em></strong>&nbsp;</span>file.</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">\r\nPAYPAL_CLIENT_ID=\r\n \r\nPAYPAL_SECRET=\r\n \r\nPAYPAL_MODE=sandbox</code></pre>\r\n\r\n<p>Next, create a new file with the name <span class=\"marker\">paypal.php in /config directory</span> and place the following code in the file.</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">\r\n\r\nreturn [\r\n\r\n   \'client_id\' =&gt; env(\'PAYPAL_CLIENT_ID\',\'\'),\r\n\r\n   \'secret\' =&gt; env(\'PAYPAL_SECRET\',\'\'),\r\n\r\n   \'settings\' =&gt; array(\r\n\r\n       \'mode\' =&gt; env(\'PAYPAL_MODE\',\'sandbox\'),\r\n\r\n       \'http.ConnectionTimeOut\' =&gt; 30,\r\n\r\n       \'log.LogEnabled\' =&gt; true,\r\n\r\n       \'log.FileName\' =&gt; storage_path() . \'/logs/paypal.log\',\r\n\r\n       \'log.LogLevel\' =&gt; \'ERROR\'\r\n\r\n   ),\r\n\r\n];</code></pre>\r\n\r\n<h1>Setup Migration Product</h1>\r\n\r\n<p>Now create and setup database migration. Paste the following command in the SSH terminal:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">php artisan make:migration create_products_table</code></pre>\r\n\r\n<p>After successfully creating migration, change the following code in migration file.</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">use Illuminate\\Database\\Schema\\Blueprint;\r\n\r\nuse Illuminate\\Database\\Migrations\\Migration;\r\n\r\nclass CreateProductsTable extends Migration\r\n\r\n{\r\n\r\n   public function up()\r\n\r\n   {\r\n\r\n       Schema::create(\'products\', function (Blueprint $table) {\r\n\r\n           $table-&gt;increments(\'id\');\r\n\r\n           $table-&gt;string(\'name\');\r\n\r\n           $table-&gt;text(\'details\');\r\n\r\n           $table-&gt;float(\'price\');\r\n\r\n           $table-&gt;timestamps();\r\n\r\n       });\r\n\r\n   }\r\n\r\n   public function down()\r\n\r\n   {\r\n\r\n       Schema::drop(\"products\");\r\n\r\n   }\r\n\r\n}</code></pre>\r\n\r\n<p>After that change, paste the following command on ssh terminal php artisan migrate.</p>\r\n\r\n<h1>Product Model for Payment</h1>\r\n\r\n<p>After successfully configuring all credentials for PayPal API, now let&rsquo;s create a model file with the name of Product and paste the below code in it</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">namespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass Product extends Model\r\n\r\n{\r\n\r\n   public $fillable = [\'name\',\'details\',\'price\'];\r\n\r\n}</code></pre>\r\n\r\n<h1>Setup Migration Payment</h1>\r\n\r\n<p>Now to create and setup database migration, copy the below command and paste it into the SSH terminal:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">php artisan make:migration create_payment_table</code></pre>\r\n\r\n<p>Paste the below code for creating a table for payment.</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">use Illuminate\\Database\\Schema\\Blueprint;\r\n\r\nuse Illuminate\\Database\\Migrations\\Migration;\r\n\r\nclass CreatePaymentsTable extends Migration\r\n\r\n{\r\n\r\n   public function up()\r\n\r\n   {\r\n\r\n       Schema::create(\'payments\', function (Blueprint $table) {\r\n\r\n           $table-&gt;increments(\'id\');\r\n\r\n           $table-&gt;string(\'item_number\');\r\n\r\n           $table-&gt;string(\'transaction_id\');\r\n\r\n           $table-&gt;string(\'currency_code\');\r\n\r\n           $table-&gt;string(\'payment_status\');\r\n\r\n           $table-&gt;timestamps();\r\n\r\n       });\r\n\r\n   }\r\n\r\n   public function down()\r\n\r\n   {\r\n\r\n       Schema::drop(\"payments\");\r\n\r\n   }\r\n\r\n}</code></pre>\r\n\r\n<h1>Payment Model</h1>\r\n\r\n<p>As you have successfully created migration for payment, now let&rsquo;s create model for payment by pasting the below code in your payment model namespace App;</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">use Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass Payment extends Model\r\n\r\n{\r\n\r\n   public $fillable = [\'item_number\',\'transaction_id\',\'currency_code\',\'payment_status\'];\r\n\r\n}</code></pre>\r\n\r\n<h1>PayPal payment Form View</h1>\r\n\r\n<p>You can add any form here with the way you want. While for the purpose of View, the form has 1 input field to enter the amount and a button also to complete the submission.</p>\r\n\r\n<pre>\r\n<code class=\"language-markup\">&lt;!-- &lt;form action=\"https://www.sandbox.paypal.com/cgi-bin/webscr\" method=\"post\" name=\"frmTransaction\" id=\"frmTransaction\"&gt;\r\n\r\n   &lt;input type=\"hidden\" name=\"business\" value=\"{{$paypal_id}}\"&gt;\r\n\r\n   &lt;input type=\"hidden\" name=\"cmd\" value=\"_xclick\"&gt;\r\n\r\n    &lt;input type=\"hidden\" name=\"item_name\" value=\"{{$product-&gt;name}}\"&gt;\r\n\r\n   &lt;input type=\"hidden\" name=\"item_number\" value=\"{{$product-&gt;id}}\"&gt;\r\n\r\n   &lt;input type=\"hidden\" name=\"amount\" value=\"{{$product-&gt;price}}\"&gt;   \r\n\r\n   &lt;input type=\"hidden\" name=\"currency_code\" value=\"USD\"&gt;   \r\n\r\n   &lt;input type=\"hidden\" name=\"cancel_return\" value=\"http://demo.expertphp.in/payment-cancel\"&gt;\r\n\r\n   &lt;input type=\"hidden\" name=\"return\" value=\"http://demo.expertphp.in/payment-status\"&gt;\r\n\r\n&lt;/form&gt;\r\n\r\n&lt;script&gt;document.frmTransaction.submit();&lt;/script&gt; --&gt;</code></pre>\r\n\r\n<h1>Routes</h1>\r\n\r\n<p>After creating the view successfully, now open the routes/web.php file and update routes for payment application in it.</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">Route::get(\'payment-status\',array(\'as\'=&gt;\'payment.status\',\'uses\'=&gt;\'PaymentController@paymentInfo\'));\r\n\r\nRoute::get(\'payment\',array(\'as\'=&gt;\'payment\',\'uses\'=&gt;\'PaymentController@payment\'));\r\n\r\nRoute::get(\'payment-cancel\', function () {\r\n\r\n   return \'Payment has been canceled\';\r\n\r\n});</code></pre>\r\n\r\n<h1>PayPal Payment Controller</h1>\r\n\r\n<p>Now create a new controller to write and manage all the PayPal related PHP stuff. Just paste the below shown command to create a payment Controller.</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">php artisan make:controller PaymentController</code></pre>\r\n\r\n<p>The above command will create a new controller at /app/http/Controllers with the name PaymentController.</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">namespace App\\Http\\Controllers;\r\n\r\nuse Illuminate\\Http\\Request;\r\n\r\nuse App\\Product;\r\n\r\nuse App\\Payment;\r\n\r\nclass PaymentController extends Controller {\r\n\r\n   public function payment(Request $request){\r\n\r\n          $product=Product::find($request-&gt;id);    \r\n\r\n     return view(\'payment\',compact(\'product\'));\r\n\r\n   }\r\n\r\n   public function paymentInfo(Request $request){        \r\n\r\n       if($request-&gt;tx){\r\n\r\n           if($payment=Payment::where(\'transaction_id\',$request-&gt;tx)-&gt;first()){\r\n\r\n               $payment_id=$payment-&gt;id;\r\n\r\n           }else{\r\n\r\n               $payment=new Payment;\r\n\r\n               $payment-&gt;item_number=$request-&gt;item_number;\r\n\r\n               $payment-&gt;transaction_id=$request-&gt;tx;\r\n\r\n               $payment-&gt;currency_code=$request-&gt;cc;\r\n\r\n               $payment-&gt;payment_status=$request-&gt;st;\r\n\r\n               $payment-&gt;save();\r\n\r\n               $payment_id=$payment-&gt;id;\r\n\r\n           }\r\n\r\n       return \'Pyament has been done and your payment id is : \'.$payment_id;\r\n\r\n       }else{\r\n\r\n           return \'Payment has failed\';\r\n\r\n       }\r\n\r\n   }\r\n\r\n}</code></pre>\r\n\r\n<p>Payment method are used to render form of payment gateway where selected product data is passed to buy.</p>\r\n\r\n<p>After successful redirection from paypal payment gateway we fetch response data in payment Info method and according that we update payment table with transaction id.</p>\r\n\r\n<h1>PayPal Payment Status</h1>\r\n\r\n<p>In order to notify the users about the status of the payment whether it is successfully completed or failed, following code is executed to output the status of the payment.</p>\r\n\r\n<h1>Wrapping up!</h1>\r\n\r\n<p>So in this article, i have demonstrated how to implement Laravel PayPal payment gateway in web applications. As implementing the Laravel PayPal integration, will make the app secured for funds transaction and will allow site owners to securely manage their capitals. The article covers the complete installation and step by step integration of PayPal payment gateway with the Laravel app. So that you can acquire thorough knowledge of its integration and use in the platform.</p>\r\n\r\n<p>Still if you have any further queries regarding this article, you can feel free to ask your questions in the comments section below.</p>', 1, NULL, 'public/DPTEeym62PJlzcJvijTNTqpHWl91pWzMIs7ch4iT.png', NULL, NULL, '2018-11-04 15:13:32', '2018-11-04 15:19:06'),
(8, 'asdfasdf', 'sdafdsf', 'dfdfd', '<p>dfdf</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>dsfasdf</td>\r\n			<td>asdfdsafdsa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>sdafsdf</td>\r\n			<td>sdafsdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>sdafsd</td>\r\n			<td>sdafsdf</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', 1, NULL, 'public/TDy6YaS9SwKbfyAoT2OWsNgfjip1wavWpsbK26qU.jpeg', NULL, NULL, '2019-08-29 11:21:15', '2019-08-29 11:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(4, 2, '2018-11-02 10:15:40', '2018-11-02 10:15:40'),
(4, 3, '2018-11-02 10:15:41', '2018-11-02 10:15:41'),
(6, 3, '2018-11-02 13:37:48', '2018-11-02 13:37:48'),
(7, 3, '2018-11-04 15:13:32', '2018-11-04 15:13:32'),
(7, 4, '2018-11-04 15:13:32', '2018-11-04 15:13:32'),
(8, 2, '2019-08-29 11:21:15', '2019-08-29 11:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Editor', '2018-10-23 16:24:03', '2018-10-23 16:24:03'),
(2, 'publiser', '2018-10-23 16:24:44', '2018-10-23 16:24:44'),
(3, 'writer', '2018-10-23 16:25:26', '2018-10-23 16:25:26');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'post tag', 'post-slug', '2018-10-23 17:18:34', '2018-10-23 17:18:34'),
(2, 'pushar', 'pushar-slug', '2018-11-02 09:02:01', '2018-11-02 09:02:01'),
(3, 'laravel', 'laravel-slug', '2018-11-02 09:02:19', '2018-11-02 09:02:19'),
(4, 'paypal', 'paypal-slug', '2018-11-04 14:57:59', '2018-11-04 14:57:59'),
(5, 'adsfadsfadsf', 'asdfsadf', '2019-08-29 11:43:07', '2019-08-29 11:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kuddus', 'kuddus@gmail.com', '$2y$10$LaDRCTY3cznNVAt8LK5WI.b6mgO0BUcwPiKC3.XdwS5rflNfVbZDy', NULL, '2018-11-02 08:57:07', '2018-11-02 08:57:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD KEY `category_posts_category_id_index` (`category_id`),
  ADD KEY `category_posts_post_id_index` (`post_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_post_id_index` (`post_id`),
  ADD KEY `post_tags_tag_id_index` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
