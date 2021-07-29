# space_x_launches

Space X Launch data displayed in a Mobile App made with Flutter.

## Overview

The project implements the API found at https://api.spacexdata.com/v3/history

The main screen shows 4 containers each with a button that leads to different sections of the application.

###Launches
This displays a ListView of ListTiles that display the Name of the Launch Missions and the Year they were completed.

Upon tapping any of the tiles we are shown the details of the launch in a SnackBar at the bottom of the screen.

###Missions
This screen displays the mission category names and their description.

###Date
This section of the app shows the date and time of the launches in ascending (oldest date first).

###Success
This section of the application filters out for the successful SpaceX missions ONLY.


##Architecture
The application was made using SOLID design principles, and Atomic Design Theory. There are 3 subdirectories in the "lib" directory.
These are the data, models and screens subdirectories. The data directory contains the logic for API calls, the models directory
contains the logic for data types and their structure, and the screens directory contains the logic for the nagivation of the application.
Most objects were modelled based on their corresponding widgets, classes were named intuitively, and there was a single reponsibility
involved in creating the different objects such that if there is a need for substitution it can be made without breaking the rest
of the code.

##Dependencies
The HTTP package from pub.dev
The Transformers font from dafont.com
The intl packafe from pub.dev

##Future Additions
- The application requires a separate screen for detailed information on the basic launch data.
- The application requires a splash screen on opening.
- The application requires a sort by ascending and descending option for all filtered information.