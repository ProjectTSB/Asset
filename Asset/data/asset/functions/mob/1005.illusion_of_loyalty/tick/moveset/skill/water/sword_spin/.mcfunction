#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/sword_spin/
#
# 剣をまといつつ追いかけてくる
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/

# Tick加算
    scoreboard players add @s General.Mob.Tick 1

# プレイヤーのほうを向く
    execute if score @s General.Mob.Tick matches 0 facing entity @p feet run tp @s ~ ~ ~ ~ 0

# しばらく移動
    execute if score @s General.Mob.Tick matches 20..70 run tp @s ^ ^ ^0.2
    execute if score @s General.Mob.Tick matches 70..75 run tp @s ^ ^ ^0.1
    execute if score @s General.Mob.Tick matches 75..80 run tp @s ^ ^ ^0.05

# 剣を解放
    execute if score @s General.Mob.Tick matches 80 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/sword_spin/release_swords

# 剣を破壊
    execute if score @s General.Mob.Tick matches 160 run kill @e[type=item_display,scores={ObjectID=2053},distance=..64]

# ワープ
    execute if score @s General.Mob.Tick matches 160 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/start
