scoreboard players add @s aj.frestchika_v2.animation.105_0_later_photon_beam.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.frestchika_v2.animation.105_0_later_photon_beam.local_anim_time
function animated_java:frestchika_v2/zzzzzzzz/animations/105_0_later_photon_beam/apply_frame_as_root
execute if score @s aj.frestchika_v2.animation.105_0_later_photon_beam.local_anim_time matches 48.. run function animated_java:frestchika_v2/zzzzzzzz/animations/105_0_later_photon_beam/end