# night-noise-app
this is a noise app to help people sleep

Nite Nite overview

Nite Nite is a noise generating app that allows the user to scroll through sound categories, select sound cards, and start and stop audio with a push of a button.

Sound Categories

The following categories are added for demo purposes but can be customized or removed in a .json file.

Beach Sounds
Fire Sounds
Waterfall
Rain
About this document

This document is to give an overview of the Nite Nite application. Users can download the app to Xcode and get a general overview of the functionality.


Main Page

The main page after the application starts up has a simple scroll up/down, left/right navigation system. The user can check categories and sounds all on the first screen. This is done by using navigation views and generating lists. This is convent for future updating and adding new categories.

Sound Card

The sound card page is a simple photo, description, and start button. The user can easily play sounds and stop sounds all with a single push. The images and sounds are all referenced with .json file. This makes updating easy to manage, a simple view is made and populated based on the .json reference.

About Page

This view is made with SwiftUI forms. Adding links for the YouTube channel, text, and buttons is easy.
