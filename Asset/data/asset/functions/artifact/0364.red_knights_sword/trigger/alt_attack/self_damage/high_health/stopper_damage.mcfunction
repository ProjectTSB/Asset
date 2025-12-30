#> asset:artifact/0364.red_knights_sword/trigger/alt_attack/self_damage/high_health/stopper_damage
#
#
#
# @within function asset:artifact/0364.red_knights_sword/trigger/alt_attack/self_damage/high_health/

execute store result score $A4.Current Temporary run data get storage api: Health
scoreboard players operation $A4.Current Temporary -= $A4.Stopper Temporary
