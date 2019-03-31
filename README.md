# Pre-work - *TipCalculator*

**TipCalculator** is a tip calculator application for iOS.

Submitted by: **Yuhui Chen**

Time spent: **6-7** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] List anything else that you can get done to improve the app functionality!
* [x] User is able to change the the light/dark theme
* [x] Swip to change between screens

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [Recordit](http://www.recordit.co).
http://g.recordit.co/zsukuET4m9.gif

## Notes

Describe any challenges encountered while building the app.
It's my first time ever trying to finish a app using Xcode and Swift. The biggest challenge is that I wasn't really familiar with this software and this programming language. Even though I looked through the whole guiding video, I still had a hard start. One of the biggest problem is about using the UserDefault to store the data from one screen at get access it from another screen. I did a lot of efforts including reading documentations and watch instructive videos before I finally got through. What's more, setting and changing the segement control's titles based on the default values and user's input is also challenging for me, since I had to display the rates in proper form and also had to calculate the tip using the updated rates. 

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
