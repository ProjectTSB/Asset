#> asset:mob/0391.axia_first/ai/projectile/slash_sonic/debug
#
# デバッグ用 斬撃とばし 召喚
#
# @user
# @private

execute anchored eyes run summon item_display ^ ^ ^2 {interpolation_duration:0,teleport_duration:1,Tags:["AV.SlashSonicInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,0.1f]},item:{id:"air",Count:1b}}

execute anchored eyes positioned ^ ^ ^2 as @e[tag=AV.SlashSonicInit,distance=..0.1] run tp @s ^ ^ ^ ~ ~

execute anchored eyes positioned ^ ^ ^2 as @e[tag=AV.SlashSonicInit,distance=..0.1] run function asset:mob/0391.axia_first/ai/projectile/slash_sonic/1.init
