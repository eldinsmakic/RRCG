# RRCG

[![Build Status](https://travis-ci.com/eldinsmakic/RRCG.svg?token=3uGXrshZxgEaX9feqvRC&branch=develop)](https://travis-ci.com/eldinsmakic/RRCG)

[![codecov.io](https://codecov.io/github/eldinsmakic/RRCG/coverage.svg?branch=develop)](https://travis-ci.com/eldinsmakic/RRCG)

**Renault Radio Code Generator** help you when your car run out off battery and you need to enter again your radio code but you lost the page that contain it.
RRCG find code by using your precode that is on the back of your radio

The idea is to design the app using **Adobe XD** and an UML creator (StarUML), then develop it in TDD style.
Its the first App and done like this, doing this will help to have a better creating process of an App.

The steps are the following:
    - Think and design the app with Adobe XD
    - Think and design the business logic with an UML
    - Create the Front in the interface builder
    - Create the Back with test

I used:
    - **Github** action to keep track of every feature/bugs
    - **Travis** to continious integration
    - **CodeCov** to see the code liability and quality test
    - **Adobe XD** to design the app
    - **StartUML** to create an UML

## Designing the APP

I needed an app that is simple, that can have a page where you enter the precode and get the code, another page where you can understand how to find the precode of your radio and maybe a page where you can change the language of the app.

I begin with the iPhone design, i design first page where you can get the code and find a design that i liked then add the two others pages (tutorial and languages)

**Note:**languages pages will finally not be used, i used the locations system to get the language of the system.

### iPhone design

![Alt text](ressources/images/iphone_xd.png?raw=true "iPhone")

### iPad design

![Alt text](ressources/images/ipad_xd.png?raw=true "iPad")

## Conception of App

I try to design the business logic, how to create code from code, how the front logic will work with the button actions.

![Alt text](ressources/images/uml.png?raw=true "uml")
