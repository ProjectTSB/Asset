# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.tultaria.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'tultaria', 'function_path': 'animated_java:tultaria/animations/dodge_side/play'}
tag @s add aj.tultaria.animation.dodge_side.playing
scoreboard players set @s aj.dodge_side.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:tultaria/animations/dodge_side/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only