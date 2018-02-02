.. Not Copyright 2018 Jehbar Niño Doblas Ibarra. Public Domain.
Coding Paradigm "RR"
====================

RR will be eventually released as a gdscript framework for anyone to use.
Below is the specifications and the reasoning behind the paradigm.

File Structure
---------------
As recommended by Godot, specific scripts are stored with their
respective scenes; however, the class tree is stored in a script folder.

RR Paradigm
-----------
Since gdscript is unable to have static classes,
there are two main branches of the structure.
The **Reference classes** create a base structure that is referred by
more **refined subclasses**. This combines both worlds of Duck Typing and
Class Inheritance.



Reasoning: "What about Duck Typing?""
-------------------------------------
Duck typing does not eliminate the need for Class Inheritance. Unfornately,
the creators of GDscript thought so. Even if a game could function without classes,
classes are needed to allow the ease of refactoring and maintaining code.

Just as it is not elegant to have Smash inherited into non-smashable objects,
it is neither elegant nor reasonably maintainable to type in ``Var _health ``
and a setter/getter for each unique type of character or enemy. In a collaborative
project, convention mistakes could be made, and once a system is implemented,
it is not easy undoing them. Having an Entity Class allows inheritance of
such and also reduces the need for typing the same code over and over again.

Also, using file names for gdScript class Inheritance is also tedious and in major refactors,
quite impossible(emotionally and mentally), so instead, all the "specific" Classes
inherit from subclasses from Root.gd.

To search through the plethora of classes, just ctrl+f

The main difference between reference classes and refined classes is
that the **Reference Classes** are stored in a  script folder while
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
Several Classes are Defined in Root.gd:
.. note:: These classes should only be implemented when you need them, if you
are making a Single-Player Game, you don't really need to use the Network unless
you are linking high-scores ect. The framework is designed in mind to allow switching
between Multiplayer and Single Player as well as other desicions as painless and easily as
possible, even during the late stages of a project.

**Data**
  Data
**Entity**
  Chracters.
**GUI**
  UI stuff
**Manage**
  Manager Classes
**Map**
  Level Mechanics
**Newtork**
  Multiplayer Stuff. Client/Server Handling

Data
~~~~

There are two types of Data Handler Classes:
**SessionData**
  Handles data that is stored in the RAM, but isn't saved(yet)
**PersistData**
  Handles data that is saved and persists even if the program is closed


Entity
~~~~~~~

Entity is the class that deals with
characters, there are two main subclasses:
**PC**
  Which are characters controlled by players.
**NPC**
  Charactrs that are controlled by the game.

GUI
~~~

**HUD**
  Stands for **H**eads **U**p **D**isplay.
  Deals with anything that is shown to the player.

Manage
~~~~~~~
Manager Classes dictate between different instances. They should be
used only when necessary. The Manage class divides into each main class
from Root.gd:

**Mdata**
  Manager Class for Data.
**Mentity**

**Mgui**

**Mmap**

**Mg**
  manages all manager classes.(It is recommended that this classes
  is to be strictly implemented as a singleton and should be used
  only in the most dire of cases.dasfdfasda)
**Mnetwork**

.. Tip::  It is imperative that Manager classes should only be used
          in the mos necessary cases. For example, the health of a player
          should be dealt with the player, not the manager class. This also
          allows extension. (Most of you know this but some Gaming classes
          Advocated this kind of coding which is not the optimal coding)
