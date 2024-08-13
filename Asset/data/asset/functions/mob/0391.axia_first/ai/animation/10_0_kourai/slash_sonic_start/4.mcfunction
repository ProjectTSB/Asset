#> asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_sonic_start/4
#
# 斬撃飛ばし4
#
# @within function asset:mob/0391.axia_first/ai/animation/10_0_kourai/

# サウンド
    function asset:mob/0391.axia_first/ai/projectile/slash_sonic/3.sound

# Tempタグ付与
    tag @s add AV.Temp.This

# ディスプレイ召喚
    summon item_display ^0 ^1 ^1 {interpolation_duration:0,teleport_duration:1,Tags:["AV.SlashSonicInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[0.406f,-0.579f,0.406f,0.579f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,5f,0.1f]},item:{id:"air",Count:1b}}

# ディスプレイの位置調整
    execute positioned ^0 ^1 ^1 as @e[tag=AV.SlashSonicInit,distance=..0.1] facing entity @e[type=wither_skeleton,tag=AV.Temp.This,distance=..64,sort=nearest,limit=1] feet rotated ~180 0 run tp @s ^ ^ ^ ~ ~

# 斬撃エフェクト初期化
    execute positioned ^0 ^1 ^1 as @e[tag=AV.SlashSonicInit,distance=..0.1] run function asset:mob/0391.axia_first/ai/projectile/slash_sonic/1.init

# Tempタグ消去
    tag @s remove AV.Temp.This
