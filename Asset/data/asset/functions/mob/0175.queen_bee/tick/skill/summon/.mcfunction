#> asset:mob/0175.queen_bee/tick/skill/summon/
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill_active

# 突進前の挙動
# プレイヤーをみる
    execute if score @s General.Mob.Tick matches 10 facing entity @p[gamemode=!spectator] eyes run function asset:mob/0175.queen_bee/tick/common/tp/

# 召喚する
    execute if score @s General.Mob.Tick matches 15 run function asset:mob/0175.queen_bee/tick/skill/summon/summon

# 召喚する
    execute if score @s General.Mob.Tick matches 20 run function asset:mob/0175.queen_bee/tick/skill/summon/summon

# 召喚する
    execute if score @s General.Mob.Tick matches 25 run function asset:mob/0175.queen_bee/tick/skill/summon/summon

# リセット処理
    execute if score @s General.Mob.Tick matches 30.. run function asset:mob/0175.queen_bee/tick/skill/reset
