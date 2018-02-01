.. Not Copyright 2018 Jehbar Niño Doblas Ibarra. Public Domain.
Coding Paradigm
===============

Since gdscript is unable to have static classes,
there are two main branches of the structure.
The reference classes create a base structure that is referred by
more refined subclasses.

The paradigm that is descibed below is called the **"RR Paradigm"**

The main difference between reference classes and refined classes is
that the **Reference Classes** are stored in a global script folder while
 **Refined classes** are stored in the folder for a specific kind of scene.

For example:
::
  res://scripts/classes/Root.gd
Is a **reference class**
::
  res://scenes/map/door/Door.gd
Is a **refined class**

The purpose of reference class is to allow easire changes and refactoring
of the class structure without having to change every extends.


Defined several main classes in Root.gd:
**Data**
Data
**Entity**
Characters
**GUI**
UI stuff
**Manage**
Manager Classes
**Map**
Level Mechanics
**Newtork**
Multiplayer Stuff. Client/Server Handlin

Data
~~~~

There are two types of Data Handler Classes:
* **SessionData** - Handles data that is stored in the RAM, but isn't saved(yet)
* **PersistData** - Handles data that is saved and persists even if the program is closed


Entity
~~~~~~~

Entity is the class that deals with
characters, there are two main subclasses:
**PC**
Which are characters controlled by players
**NPC**
Charactrs that are controlled by the game.

File Structure Paradigm
=======================
As recommended by Godot, specific scripts are stored with their
respective scenes; however, the class tree is stored in a script folder.
