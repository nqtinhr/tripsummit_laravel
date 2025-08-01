```php
$ tree
.
|-- README.md
|-- app
|   |-- Http
|   |   |-- Controllers
|   |   |   |-- Admin
|   |   |   |   |-- AdminAboutItemController.php
|   |   |   |   |-- AdminAmenityController.php
|   |   |   |   |-- AdminAuthController.php
|   |   |   |   |-- AdminBlogCategoryController.php
|   |   |   |   |-- AdminContactItemController.php
|   |   |   |   |-- AdminCounterItemController.php
|   |   |   |   |-- AdminDashboardController.php
|   |   |   |   |-- AdminDestinationController.php
|   |   |   |   |-- AdminFaqController.php
|   |   |   |   |-- AdminFeatureController.php
|   |   |   |   |-- AdminHomeItemController.php
|   |   |   |   |-- AdminPackageController.php
|   |   |   |   |-- AdminPostController.php
|   |   |   |   |-- AdminReviewController.php
|   |   |   |   |-- AdminSettingController.php
|   |   |   |   |-- AdminSliderController.php
|   |   |   |   |-- AdminSubscriberController.php
|   |   |   |   |-- AdminTeamMemberController.php
|   |   |   |   |-- AdminTermPrivacyItemController.php
|   |   |   |   |-- AdminTestimonialController.php
|   |   |   |   |-- AdminTourController.php
|   |   |   |   |-- AdminUserController.php
|   |   |   |   `-- AdminWelcomeItemController.php
|   |   |   |-- Controller.php
|   |   |   |-- Front
|   |   |   |   `-- FrontController.php
|   |   |   `-- User
|   |   |       `-- UserController.php
|   |   `-- Middleware
|   |       |-- Admin.php
|   |       `-- User.php
|   |-- Mail
|   |   `-- Websitemail.php
|   |-- Models
|   |   |-- AboutItem.php
|   |   |-- Admin.php
|   |   |-- Amenity.php
|   |   |-- BlogCategory.php
|   |   |-- Booking.php
|   |   |-- ContactItem.php
|   |   |-- CounterItem.php
|   |   |-- Destination.php
|   |   |-- DestinationPhoto.php
|   |   |-- DestinationVideo.php
|   |   |-- Faq.php
|   |   |-- Feature.php
|   |   |-- HomeItem.php
|   |   |-- Message.php
|   |   |-- MessageComment.php
|   |   |-- Package.php
|   |   |-- PackageAmenity.php
|   |   |-- PackageFaq.php
|   |   |-- PackageItinerary.php
|   |   |-- PackagePhoto.php
|   |   |-- PackageVideo.php
|   |   |-- Post.php
|   |   |-- Review.php
|   |   |-- Setting.php
|   |   |-- Slider.php
|   |   |-- Subscriber.php
|   |   |-- TeamMember.php
|   |   |-- TermPrivacyItem.php
|   |   |-- Testimonial.php
|   |   |-- Tour.php
|   |   |-- User.php
|   |   |-- WelcomeItem.php
|   |   `-- Wishlist.php
|   `-- Providers
|       `-- AppServiceProvider.php
|-- artisan
|-- bootstrap
|   |-- app.php
|   |-- cache
|   `-- providers.php
|-- composer.json
|-- composer.lock
|-- config
|   |-- app.php
|   |-- auth.php
|   |-- cache.php
|   |-- database.php
|   |-- filesystems.php
|   |-- logging.php
|   |-- mail.php
|   |-- paypal.php
|   |-- queue.php
|   |-- services.php
|   |-- session.php
|   `-- stripe.php
|-- database
|   |-- factories
|   |   `-- UserFactory.php
|   |-- migrations
|   |   |-- 0001_01_01_000000_create_users_table.php
|   |   |-- 0001_01_01_000001_create_cache_table.php
|   |   |-- 0001_01_01_000002_create_jobs_table.php
|   |   |-- 2024_06_03_094105_create_admins_table.php
|   |   |-- 2024_07_05_042854_create_sliders_table.php
|   |   |-- 2024_07_06_135626_create_welcome_items_table.php
|   |   |-- 2024_07_06_144401_create_features_table.php
|   |   |-- 2024_07_06_151550_create_counter_items_table.php
|   |   |-- 2024_07_06_161550_create_testimonials_table.php
|   |   |-- 2024_07_06_235532_create_team_members_table.php
|   |   |-- 2024_07_07_011132_create_faqs_table.php
|   |   |-- 2024_07_07_014641_create_blog_categories_table.php
|   |   |-- 2024_07_07_021516_create_posts_table.php
|   |   |-- 2024_07_07_083444_create_destinations_table.php
|   |   |-- 2024_07_07_122952_create_destination_photos_table.php
|   |   |-- 2024_07_07_165917_create_destination_videos_table.php
|   |   |-- 2024_07_08_003005_create_packages_table.php
|   |   |-- 2024_07_08_094141_create_amenities_table.php
|   |   |-- 2024_07_08_100244_create_package_amenities_table.php
|   |   |-- 2024_07_08_114905_create_package_itineraries_table.php
|   |   |-- 2024_07_08_123238_create_package_photos_table.php
|   |   |-- 2024_07_08_182407_create_package_videos_table.php
|   |   |-- 2024_07_09_032902_create_package_faqs_table.php
|   |   |-- 2024_07_09_090045_create_tours_table.php
|   |   |-- 2024_07_09_103000_create_bookings_table.php
|   |   |-- 2024_07_10_060338_create_reviews_table.php
|   |   |-- 2024_07_11_235532_create_wishlists_table.php
|   |   |-- 2024_07_12_025241_create_messages_table.php
|   |   |-- 2024_07_12_025342_create_message_comments_table.php
|   |   |-- 2024_07_12_043848_create_subscribers_table.php
|   |   |-- 2024_07_12_090352_create_home_items_table.php
|   |   |-- 2024_07_12_115523_create_about_items_table.php
|   |   |-- 2024_07_12_121009_create_contact_items_table.php
|   |   |-- 2024_07_12_122841_create_term_privacy_items_table.php
|   |   `-- 2024_07_12_172936_create_settings_table.php
|   `-- seeders
|       |-- AboutItemSeeder.php
|       |-- AdminSeeder.php
|       |-- ContactItemSeeder.php
|       |-- CounterItemSeeder.php
|       |-- DatabaseSeeder.php
|       |-- HomeItemSeeder.php
|       |-- SettingSeeder.php
|       |-- TermPrivacyItemSeeder.php
|       `-- WelcomeItemSeeder.php
|-- deploy
|   |-- Dockerfile
|   |-- nginx.conf
|   `-- php.ini
|-- docs
|   |-- help.txt
|   |-- password.txt
|   |-- paypal_laravel_11.txt
|   `-- stripe_laravel_11.txt
|-- folder-stucture.md
|-- package.json
|-- phpunit.xml
|-- public
|   |-- dist
|   |   |-- css
|   |   |   |-- air-datepicker.min.css
|   |   |   |-- bootstrap-tagsinput.css
|   |   |   |-- bootstrap.min.css
|   |   |   |-- bootstrap4-toggle.min.css
|   |   |   |-- components.css
|   |   |   |-- custom-top.css
|   |   |   |-- custom.css
|   |   |   |-- dataTables.bootstrap4.min.css
|   |   |   |-- duotone-dark.css
|   |   |   |-- font_awesome_5_free.min.css
|   |   |   |-- fontawesome-iconpicker.css
|   |   |   |-- fontawesome-iconpicker.min.css
|   |   |   |-- iziToast.min.css
|   |   |   |-- loading.gif
|   |   |   |-- select2.min.css
|   |   |   |-- spacing.css
|   |   |   |-- style.css
|   |   |   `-- summernote-bs4.css
|   |   |-- img
|   |   |   |-- drawkit
|   |   |   |   |-- drawkit-full-stack-man-colour.svg
|   |   |   |   |-- drawkit-mobile-article-colour.svg
|   |   |   |   |-- drawkit-nature-man-colour.svg
|   |   |   |   `-- revenue-graph-colour.svg
|   |   |   |-- stisla-fill.svg
|   |   |   |-- stisla-light.svg
|   |   |   |-- stisla-transparent.svg
|   |   |   `-- stisla.svg
|   |   |-- js
|   |   |   |-- air-datepicker.min.js
|   |   |   |-- bootstrap-tagsinput.min.js
|   |   |   |-- bootstrap.bundle.min.js
|   |   |   |-- bootstrap.min.js
|   |   |   |-- bootstrap4-toggle.min.js
|   |   |   |-- custom.js
|   |   |   |-- dataTables.bootstrap4.min.js
|   |   |   |-- fontawesome-iconpicker.js
|   |   |   |-- fontawesome-iconpicker.min.js
|   |   |   |-- iziToast.min.js
|   |   |   |-- jquery-3.7.0.min.js
|   |   |   |-- jquery.dataTables.min.js
|   |   |   |-- jquery.nicescroll.min.js
|   |   |   |-- jscolor.js
|   |   |   |-- moment.js
|   |   |   |-- moment.min.js
|   |   |   |-- popper.min.js
|   |   |   |-- scripts.js
|   |   |   |-- select2.full.min.js
|   |   |   |-- stisla.js
|   |   |   |-- summernote-bs4.js
|   |   |   `-- tooltip.js
|   |   |-- tinymce
|   |   |   |-- icons
|   |   |   |   `-- default
|   |   |   |       `-- icons.min.js
|   |   |   |-- jquery.tinymce.min.js
|   |   |   |-- langs
|   |   |   |   `-- README.md
|   |   |   |-- license.txt
|   |   |   |-- plugins
|   |   |   |   |-- advlist
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- anchor
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- autolink
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- autoresize
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- autosave
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- bbcode
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- charmap
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- code
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- codesample
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- colorpicker
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- contextmenu
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- directionality
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- emoticons
|   |   |   |   |   |-- js
|   |   |   |   |   |   |-- emojiimages.js
|   |   |   |   |   |   |-- emojiimages.min.js
|   |   |   |   |   |   |-- emojis.js
|   |   |   |   |   |   `-- emojis.min.js
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- fullpage
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- fullscreen
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- help
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- hr
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- image
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- imagetools
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- importcss
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- insertdatetime
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- legacyoutput
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- link
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- lists
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- media
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- nonbreaking
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- noneditable
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- pagebreak
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- paste
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- preview
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- print
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- quickbars
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- save
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- searchreplace
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- spellchecker
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- tabfocus
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- table
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- template
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- textcolor
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- textpattern
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- toc
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- visualblocks
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   |-- visualchars
|   |   |   |   |   `-- plugin.min.js
|   |   |   |   `-- wordcount
|   |   |   |       `-- plugin.min.js
|   |   |   |-- skins
|   |   |   |   |-- content
|   |   |   |   |   |-- dark
|   |   |   |   |   |   `-- content.min.css
|   |   |   |   |   |-- default
|   |   |   |   |   |   `-- content.min.css
|   |   |   |   |   |-- document
|   |   |   |   |   |   `-- content.min.css
|   |   |   |   |   `-- writer
|   |   |   |   |       `-- content.min.css
|   |   |   |   `-- ui
|   |   |   |       |-- oxide
|   |   |   |       |   |-- content.inline.min.css
|   |   |   |       |   |-- content.min.css
|   |   |   |       |   |-- content.mobile.min.css
|   |   |   |       |   |-- fonts
|   |   |   |       |   |   `-- tinymce-mobile.woff
|   |   |   |       |   |-- skin.min.css
|   |   |   |       |   |-- skin.mobile.min.css
|   |   |   |       |   `-- skin.shadowdom.min.css
|   |   |   |       `-- oxide-dark
|   |   |   |           |-- content.inline.min.css
|   |   |   |           |-- content.min.css
|   |   |   |           |-- content.mobile.min.css
|   |   |   |           |-- fonts
|   |   |   |           |   `-- tinymce-mobile.woff
|   |   |   |           |-- skin.min.css
|   |   |   |           |-- skin.mobile.min.css
|   |   |   |           `-- skin.shadowdom.min.css
|   |   |   |-- themes
|   |   |   |   |-- mobile
|   |   |   |   |   `-- theme.min.js
|   |   |   |   `-- silver
|   |   |   |       `-- theme.min.js
|   |   |   |-- tinymce.d.ts
|   |   |   `-- tinymce.min.js
|   |   `-- webfonts
|   |       |-- fa-brands-400.eot
|   |       |-- fa-brands-400.svg
|   |       |-- fa-brands-400.ttf
|   |       |-- fa-brands-400.woff
|   |       |-- fa-brands-400.woff2
|   |       |-- fa-regular-400.eot
|   |       |-- fa-regular-400.svg
|   |       |-- fa-regular-400.ttf
|   |       |-- fa-regular-400.woff
|   |       |-- fa-regular-400.woff2
|   |       |-- fa-solid-900.eot
|   |       |-- fa-solid-900.svg
|   |       |-- fa-solid-900.ttf
|   |       |-- fa-solid-900.woff
|   |       `-- fa-solid-900.woff2
|   |-- dist-front
|   |   |-- css
|   |   |   |-- all.css
|   |   |   |-- animate.min.css
|   |   |   |-- bootstrap-datepicker.css
|   |   |   |-- bootstrap-datepicker.min.css
|   |   |   |-- bootstrap.min.css
|   |   |   |-- images
|   |   |   |   `-- ui-icons_444444_256x240.png
|   |   |   |-- jquery-ui.css
|   |   |   |-- magnific-popup.css
|   |   |   |-- meanmenu.css
|   |   |   |-- owl.carousel.min.css
|   |   |   |-- select2-bootstrap.css
|   |   |   |-- select2-bootstrap.min.css
|   |   |   |-- select2.min.css
|   |   |   |-- spacing.css
|   |   |   `-- style.css
|   |   |-- js
|   |   |   |-- bootstrap-datepicker.js
|   |   |   |-- bootstrap-datepicker.min.js
|   |   |   |-- bootstrap.min.js
|   |   |   |-- counterup.min.js
|   |   |   |-- custom.js
|   |   |   |-- jquery-3.6.1.min.js
|   |   |   |-- jquery-ui.js
|   |   |   |-- jquery.magnific-popup.min.js
|   |   |   |-- jquery.meanmenu.js
|   |   |   |-- jquery.waypoints.min.js
|   |   |   |-- moment.min.js
|   |   |   |-- multi-countdown.js
|   |   |   |-- owl.carousel.min.js
|   |   |   |-- select2.full.js
|   |   |   `-- wow.min.js
|   |   `-- webfonts
|   |       |-- fa-brands-400.eot
|   |       |-- fa-brands-400.svg
|   |       |-- fa-brands-400.ttf
|   |       |-- fa-brands-400.woff
|   |       |-- fa-brands-400.woff2
|   |       |-- fa-regular-400.eot
|   |       |-- fa-regular-400.svg
|   |       |-- fa-regular-400.ttf
|   |       |-- fa-regular-400.woff
|   |       |-- fa-regular-400.woff2
|   |       |-- fa-solid-900.eot
|   |       |-- fa-solid-900.svg
|   |       |-- fa-solid-900.ttf
|   |       |-- fa-solid-900.woff
|   |       `-- fa-solid-900.woff2
|   |-- favicon.ico
|   |-- index.php
|   |-- robots.txt
|   `-- uploads
|       |-- admin_1717493029.jpg
|       |-- banner_1720807992.jpg
|       |-- default.png
|       |-- destination_1720356375.jpg
|       |-- destination_1720356759.jpg
|       |-- destination_1720356764.jpg
|       |-- destination_1720356780.jpg
|       |-- destination_1720356784.jpg
|       |-- destination_1720356795.jpg
|       |-- destination_1720371072.jpg
|       |-- destination_1720371076.jpg
|       |-- destination_1720371080.jpg
|       |-- destination_1720371112.jpg
|       |-- destination_1720371135.jpg
|       |-- destination_1720371140.jpg
|       |-- destination_1720373133.jpg
|       |-- destination_1720373138.jpg
|       |-- destination_1720373144.jpg
|       |-- destination_1720373151.jpg
|       |-- destination_featured_1720342748.jpg
|       |-- destination_featured_1720345940.jpg
|       |-- destination_featured_1720346050.jpg
|       |-- destination_featured_1720372812.jpg
|       |-- favicon_1720806387.png
|       |-- loading.gif
|       |-- logo_1720806387.png
|       |-- package_1720464032.jpg
|       |-- package_1720464042.jpg
|       |-- package_1720464047.jpg
|       |-- package_1720464052.jpg
|       |-- package_banner_1720404072.jpg
|       |-- package_banner_1720516785.jpg
|       |-- package_banner_1720809341.jpg
|       |-- package_banner_1720809541.jpg
|       |-- package_featured_1720404072.jpg
|       |-- package_featured_1720516785.jpg
|       |-- package_featured_1720809341.jpg
|       |-- package_featured_1720809541.jpg
|       |-- post_1720319638.jpg
|       |-- post_1720319899.jpg
|       |-- post_1720319942.jpg
|       |-- slider_1720158484.jpg
|       |-- slider_1720158513.jpg
|       |-- team_member_1720311317.jpg
|       |-- team_member_1720311403.jpg
|       |-- team_member_1720311450.jpg
|       |-- team_member_1720311503.jpg
|       |-- testimonial_1720284166.jpg
|       |-- testimonial_1720284215.jpg
|       |-- testimonial_1720284255.jpg
|       |-- testimonial_background_1720808299.jpg
|       |-- user_1720115125.jpg
|       `-- welcome_item_1720275719.jpg
|-- resources
|   |-- css
|   |   `-- app.css
|   |-- js
|   |   |-- app.js
|   |   `-- bootstrap.js
|   `-- views
|       |-- admin
|       |   |-- about_item
|       |   |   `-- index.blade.php
|       |   |-- amenity
|       |   |   |-- create.blade.php
|       |   |   |-- edit.blade.php
|       |   |   `-- index.blade.php
|       |   |-- blog_category
|       |   |   |-- create.blade.php
|       |   |   |-- edit.blade.php
|       |   |   `-- index.blade.php
|       |   |-- contact_item
|       |   |   `-- index.blade.php
|       |   |-- counter
|       |   |   `-- index.blade.php
|       |   |-- dashboard.blade.php
|       |   |-- destination
|       |   |   |-- create.blade.php
|       |   |   |-- edit.blade.php
|       |   |   |-- index.blade.php
|       |   |   |-- photos.blade.php
|       |   |   `-- videos.blade.php
|       |   |-- faq
|       |   |   |-- create.blade.php
|       |   |   |-- edit.blade.php
|       |   |   `-- index.blade.php
|       |   |-- feature
|       |   |   |-- create.blade.php
|       |   |   |-- edit.blade.php
|       |   |   `-- index.blade.php
|       |   |-- forget-password.blade.php
|       |   |-- home_item
|       |   |   `-- index.blade.php
|       |   |-- layout
|       |   |   |-- master.blade.php
|       |   |   |-- nav.blade.php
|       |   |   `-- sidebar.blade.php
|       |   |-- login.blade.php
|       |   |-- package
|       |   |   |-- amenities.blade.php
|       |   |   |-- create.blade.php
|       |   |   |-- edit.blade.php
|       |   |   |-- faqs.blade.php
|       |   |   |-- index.blade.php
|       |   |   |-- itineraries.blade.php
|       |   |   |-- photos.blade.php
|       |   |   `-- videos.blade.php
|       |   |-- post
|       |   |   |-- create.blade.php
|       |   |   |-- edit.blade.php
|       |   |   `-- index.blade.php
|       |   |-- profile.blade.php
|       |   |-- reset-password.blade.php
|       |   |-- review
|       |   |   `-- index.blade.php
|       |   |-- setting
|       |   |   `-- index.blade.php
|       |   |-- slider
|       |   |   |-- create.blade.php
|       |   |   |-- edit.blade.php
|       |   |   `-- index.blade.php
|       |   |-- subscriber
|       |   |   |-- index.blade.php
|       |   |   `-- send_email.blade.php
|       |   |-- team_member
|       |   |   |-- create.blade.php
|       |   |   |-- edit.blade.php
|       |   |   `-- index.blade.php
|       |   |-- term_privacy_item
|       |   |   `-- index.blade.php
|       |   |-- testimonial
|       |   |   |-- create.blade.php
|       |   |   |-- edit.blade.php
|       |   |   `-- index.blade.php
|       |   |-- tour
|       |   |   |-- booking.blade.php
|       |   |   |-- create.blade.php
|       |   |   |-- edit.blade.php
|       |   |   |-- index.blade.php
|       |   |   `-- invoice.blade.php
|       |   |-- user
|       |   |   |-- message.blade.php
|       |   |   |-- message_detail.blade.php
|       |   |   |-- user_create.blade.php
|       |   |   |-- user_edit.blade.php
|       |   |   `-- users.blade.php
|       |   `-- welcome
|       |       `-- index.blade.php
|       |-- email.blade.php
|       |-- front
|       |   |-- about.blade.php
|       |   |-- blog.blade.php
|       |   |-- category.blade.php
|       |   |-- contact.blade.php
|       |   |-- destination.blade.php
|       |   |-- destinations.blade.php
|       |   |-- faq.blade.php
|       |   |-- forget-password.blade.php
|       |   |-- home.blade.php
|       |   |-- layout
|       |   |   |-- master.blade.php
|       |   |   `-- nav.blade.php
|       |   |-- login.blade.php
|       |   |-- package.blade.php
|       |   |-- packages.blade.php
|       |   |-- post.blade.php
|       |   |-- privacy.blade.php
|       |   |-- registration.blade.php
|       |   |-- reset-password.blade.php
|       |   |-- team_member.blade.php
|       |   |-- team_members.blade.php
|       |   `-- terms.blade.php
|       `-- user
|           |-- booking.blade.php
|           |-- dashboard.blade.php
|           |-- invoice.blade.php
|           |-- message.blade.php
|           |-- profile.blade.php
|           |-- review.blade.php
|           |-- sidebar.blade.php
|           `-- wishlist.blade.php
|-- routes
|   |-- console.php
|   `-- web.php
|-- sql
|   `-- tripsummit.sql
|-- storage
|   |-- app
|   |   `-- public
|   |-- framework
|   |   |-- cache
|   |   |   `-- data
|   |   |-- sessions
|   |   |-- testing
|   |   `-- views
|   `-- logs
|-- tests
|   |-- Feature
|   |   `-- ExampleTest.php
|   |-- TestCase.php
|   `-- Unit
|       `-- ExampleTest.php
`-- vite.config.js
```
