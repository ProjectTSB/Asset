#> asset:mob/0376.convict_v2/tick/06.skill_axe6/main
#
#
#
# @within function asset:mob/0376.convict_v2/tick/skill_active

# アニメーション変える
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/wait/stop
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/attack6_1/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 facing entity @p eyes rotated ~ 0 run function asset:mob/0376.convict_v2/tick/common/tp

# 演出
    execute if score @s General.Mob.Tick matches 18 run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 1

# つかみ挙動へ
    execute if score @s General.Mob.Tick matches 18..28 positioned ^ ^ ^1.2 run function asset:mob/0376.convict_v2/tick/common/tp
    execute if score @s General.Mob.Tick matches 18..28 at @s if entity @p[distance=..2] run function asset:mob/0376.convict_v2/tick/06.skill_axe6/grab

# リセット
    execute if score @s General.Mob.Tick matches 57 run function asset:mob/0376.convict_v2/tick/skill_reset


# つかみに成功した時

# プレイヤー束縛
    execute if score @s General.Mob.Tick matches 1000.. positioned ^ ^ ^0.7 positioned ~ ~1 ~ if entity @p[distance=..2] as @p at @s facing entity @e[type=wither_skeleton,tag=Enemy.Boss,sort=nearest,limit=1] feet run tp @s @s

# 演出
    execute if score @s General.Mob.Tick matches 1020 run playsound ogg:block.sculk_sensor.sculk_clicking4 hostile @a ~ ~ ~ 1 0.6

# 斬る
    execute if score @s General.Mob.Tick matches 1062 positioned ^ ^ ^0.7 positioned ~ ~1 ~ run function asset:mob/0376.convict_v2/tick/06.skill_axe6/execute

# リセット
    execute if score @s General.Mob.Tick matches 1095 run function asset:mob/0376.convict_v2/tick/skill_reset
