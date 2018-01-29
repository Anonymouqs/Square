extends RigidBody2D

var health = 100

func damage(dam):
  health -= dam

func health(add):
  health += add
