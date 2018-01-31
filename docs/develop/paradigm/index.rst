Coding Paradigm
===============
Since gdscript is unable to have static classes,
there are two main branches of the structure.
The reference classes create a base structure that is referred by
more refined subclasses.

The main difference between reference classes and refined classes is
that the *reference classes* are stored in a "global script folder" while
 *refined classes* are stored in the folder for a specific kind of scene.

 For example:
 ::
   res://scripts/classes/Root.gd
Is a *reference class*, and
::
  res://scenes/map/door/Door.gd
Is a *refined class* that likely inherits from a reference class.

The purpose of reference class is to allow easire changes and refactoring
of the class structure without having to change every extends.


Defined in 3 main classes in Root.gd:
*Entity* - Characters
*GUI* - UI stuff
*Mech* - mechanics


Entity
------
Entities are Characters, the branch is divided into two main parts:
*PC* - Which are characters controlled by players
*NPC* - Charactrs that are controlled by the game.

File Structure Paradigm
=======================
As recommended by Godot, specific scenes are stored with their
respective scripts; however, the class tree
