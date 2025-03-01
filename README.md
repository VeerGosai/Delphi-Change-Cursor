# ChangeCursor: Delphi Cursor Change Program

## Overview
ChangeCursor is a Delphi application that allows users to change the mouse cursor dynamically based on the button clicked. The program includes buttons for cycling through different cursor styles (default, cross, hand) and updates the mouse cursor accordingly.

## Features
- **Dynamic Cursor Change**: Allows users to switch between different mouse cursors.
- **Interactive UI**: Includes buttons to change the cursor to "default," "cross," or "hand."
- **Cursor Customization**: Users can see changes visually with associated images for each cursor type.

## How It Works
The program listens to button click events and updates the cursor based on the selected button. The `MouseUpdate` procedure handles the cursor change and updates the UI, such as changing images and button visibility.

### Code Explanation
- **FormActivate**: Initializes the default cursor state to `crDefault`.
- **btnCursorLeftClick**: Decreases the cursor type index (`iMouse`), which triggers the update to the previous cursor style.
- **btnCursorRightClick**: Increases the cursor type index (`iMouse`), which triggers the update to the next cursor style.
- **MouseUpdate**: This procedure updates the cursor and associated images based on the current cursor index (`iMouse`).

### Cursor Types
- **Default Cursor (`crDefault`)**: Normal cursor, shown when the program starts or when the default state is selected.
- **Cross Cursor (`crCross`)**: A cross-hair cursor, used when the left button is clicked to change to this cursor.
- **Hand Cursor (`crHandPoint`)**: A hand cursor, used when the right button is clicked to switch to the hand pointer.

## Usage
1. Run the Delphi application.
2. Click the **Left Button** to change the cursor to a cross-hair.
3. Click the **Right Button** to change the cursor to a hand pointer.
4. The image associated with each cursor type will also change to visually indicate the selected cursor.

## Technologies Used
- **Delphi (VCL framework)**
- **Pascal (Object Pascal)**
- **Windows API (for handling cursor types)**

## Potential Enhancements
- **Custom Cursor Files**: Allow users to upload custom images to use as cursors.
- **More Cursor Options**: Include additional predefined cursor styles for more variety.
- **User Preferences**: Save the user’s cursor choice and load it when the application restarts.

## Author
**Veer Gosai**  
This program was created to demonstrate how to interactively change the mouse cursor in a Delphi application.

---
This document serves as a guide for understanding and improving the ChangeCursor Delphi program.
