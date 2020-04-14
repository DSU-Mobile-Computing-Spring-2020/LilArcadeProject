
"Lil' Arcade" - README
==========

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
It's our group app that allows a user to choose from various classic arcade games...Enjoy!!

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Games/Recreation
- **Mobile:** Currently working on making this a mobile game, 
but it might work just as well on a computer. Mobile might have more features, though. 
- **Story:** Allows a user to choose from various classic arcade games
- **Market:** Anyone with an adventurous heart can use this app...no age limit or requirement!!
- **Habit:** Anywhere. Anytime.
- **Scope:** We think this app has very similar scheme to it as the Apple messaging app, GamePigeon. 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* Login/Logout/Sign Up
* User can click on games and play them
* User can see their profile and stats

**Optional Nice-to-have Stories**

* User can set the whole game to be in different languages
* User can hear music in the background of the app
* User collects coins in their account to unlock collectibles

### 2. Screen Archetypes

* [Login / Register] 
   * User signs up or logs into their account
* [Detail]
   * User can view the games and their high scores
* [Creation]
   * User can create a new background 
* [Profile]
   * User can view their stats (wins, losses, scores, etc.)
* [Settings]
   * User can change their view mode (light mode/dark mode)
   * User can adjust their volume/sound effects
   * User can choose their background preference
 
### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Settings
* Profile/Login
* GameRoom

**Flow Navigation** (Screen to Screen)

* Login/Sign Up
   * Game Room Tab
* GameRoom
   * [Optional] Choose a game
   * [Optional] My Profile Tab 
   * [Optional] Settings Tab 
* Settings
   * [Optional] GameRoom Tab
   * [Optional] My Profile Tab
* My Profile 
   * [Optional] Login/Sign Up Tab
   * [Optional] GameRoom Tab
   * [Optional] Settings Tab

## Wireframes

<a href="https://ibb.co/0CBV7Vm"><img src="https://i.ibb.co/ZBH1j1G/IMG-3466.jpg" alt="IMG-3466" border="0"></a>

### [BONUS] Digital Wireframes & Mockups
Snake Image:

<a href="https://ibb.co/PYMdn2C"><img src="https://i.ibb.co/b3FkZ4d/Screen-Shot-2020-03-22-at-9-52-52-PM.png" alt="Screen-Shot-2020-03-22-at-9-52-52-PM" border="0"></a>

Tic Tac Toe Image:

<a href="https://ibb.co/9HSKnmp"><img src="https://i.ibb.co/60L9Ycy/Image-from-i-OS-1.png" alt="Image-from-i-OS-1" border="0"></a>

Speed Tap Image:

<a href="https://ibb.co/KwPXCkK"><img src="https://i.ibb.co/L5F84WN/Image-from-i-OS-2.png" alt="Image-from-i-OS-2" border="0"></a>

### [BONUS] Interactive Prototype

## Schema 

### Models

<a href="https://ibb.co/qpRnwfc"><img src="https://i.ibb.co/YhtWGM1/Screen-Shot-2020-03-25-at-11-24-43-PM.png" alt="Screen-Shot-2020-03-25-at-11-24-43-PM" border="0"></a>

<a href="https://ibb.co/55Cdf6P"><img src="https://i.ibb.co/K9BY3XJ/Screen-Shot-2020-03-25-at-11-24-54-PM.png" alt="Screen-Shot-2020-03-25-at-11-24-54-PM" border="0"></a>

<a href="https://ibb.co/v1wxnzN"><img src="https://i.ibb.co/jh6vX4C/Screen-Shot-2020-03-25-at-11-27-55-PM.png" alt="Screen-Shot-2020-03-25-at-11-27-55-PM" border="0"></a>

<a href="https://ibb.co/ry5Mqc4"><img src="https://i.ibb.co/BsTjvrq/Screen-Shot-2020-03-25-at-11-28-27-PM.png" alt="Screen-Shot-2020-03-25-at-11-28-27-PM" border="0"></a>

### Networking
- Login Feed Screen
  - (Create/POST) Create a new user 
  - (Read/GET) Get User Login and Password

- Home Feed / Game Room Screen
  - No Network Requests needed

- Settings Screen
  - (Read/GET) User’s Background Color Setting
  - (Read/GET) User’s Game Volume Setting
  - (Read/GET) User’s Dark Mode Setting
  - (Update/PUT) User changes Settings 

- Profile Screen
  - (Update/PUT) Update User Profile Image
  - (Read/GET) User Profile Image
  - (Update/PUT) Update Username
  - (Read/GET) User Profile Username
  - (Read/Get) User Wins
  - (Update/PUT) User Wins
  - (Read/Get) User Losses
  - (Update/PUT) User Losses
  - (Read/Get) User Draws
  - (Update/PUT) User Draws
  - [Optional] (Read/GET) Display all the user highscores from each game 

- TicTacToe Screen
  - No Network Requests needed

- Speed Tap Screen
  - (Read/GET) User’s most taps score
  - (Update/PUT) User’s tap score in the current game

- Snake Screen
  - (Read/GET) User’s most “apples” eaten score
  - (Update/PUT) User’s “apples eaten” score in the current game
<<<<<<< HEAD
=======

# LilArcadeProject
It's our group app that is a mini arcade of simple, classic games...Enjoy!! 

Unit 10 - Weekly Sprints:
- [x] Create database via Parse
- [x] User Login/Logout/Sign Up
- [x] TabView Controller (Settings, Profile, Home/GameRoom)
- [x] Home Feed Screen (Just the design)
- [x] Settings Screen
- [x] Profile Screen
- [x] Test Database w/ fake user

### Build Progress/App Skeleton Walkthrough GIF:
<img src="http://g.recordit.co/tkUSunrwVO.gif" width=250><br>

# Unit 11 - Weekly Sprints:

## Create Tic Tac Toe:
