# StarServe 🌌
StarServe" is an innovative Flutter project that serves as a platform designed to connect volunteers and organizations, fostering a sense of community engagement and making a positive impact on society. The app offers a wide range of features and functionalities, designed to facilitate volunteer opportunities and support organizations. 

Key components and functionalities of StarServe include:

For Volunteers:
-> Users can create profiles with personal information, skills, and interests.
-> Users can search for opportunities by location, date, time, cause, or organisation.
-> Users can view nearby volunteer opportunities based on their location and filter by availability range.
-> Volunteers can sign up for shifts matching their availability and interests.
-> Users receive real-time notifications about new opportunities, shifts, and updates.
-> Enable direct communication between volunteers and organisations. 
-> Display upcoming opportunities on a calendar.
-> Volunteers can track their volunteer hours and contributions for a clear record of their impact.
-> Volunteers can follow organisations they support and receive updates from them.

For Organizations:
-> Organisations can create profiles with mission details and volunteer needs.
-> Organisations can post volunteer shifts with date, time, location, and tasks.
-> Organisations can raise funds to support their missions and volunteer projects.
-> Display upcoming opportunities on a calendar.
-> Recognise users' volunteering achievements.

External libraries/APIs:

-> mapbox api - to get the location of event and their distance (https://github.com/eopeter/flutter_mapbox_navigation)

-> material_design_icons_flutter - this api contains set of flutter icons which are very easy to use (https://github.com/ziofat/material_design_icons_flutter)

-> animation package - this library adds animation to the app, to enhance user experience (https://github.com/flutter/packages/tree/main/packages/animations)

-> Firebase Cloud Messaging (FCM): FCM is a reliable and efficient messaging service provided by Firebase. It allows sending push notifications to Android and iOS devices. (https://github.com/firebase/flutterfire/tree/master/packages/firebase_messaging/firebase_messaging)

-> Firebase Authentication: Firebase Authentication provides secure authentication services, including email/password, phone number, and social media sign-ins, making it easy to implement user authentication in Flutter apps. (https://github.com/firebase/flutterfire/tree/master/packages/firebase_auth/firebase_auth)

-> Firebase Analytics: To monitor app performance and user engagement, you may want to integrate analytics and crash reporting tools. (https://firebase.google.com/docs/reference/js/analytics.md#analytics_package)

-> Firestore: Cloud Firestore is a flexible, scalable database for mobile, web, and server development from Firebase and Google Cloud. (https://firebase.google.com/docs/firestore)

-> Url_launcher PlugIn : To allow users to call the organisations with a single tap and to redirect to payment application. (https://pub.dev/documentation/url_launcher/latest/)

-> Google sign in plugin: To allow users to signin with google (https://pub.dev/documentation/google_sign_in/latest/)

-> Calendar API: To allow users to manage events on their Google calendar. (https://developers.google.com/calendar/api/v3/reference)