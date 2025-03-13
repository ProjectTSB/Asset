#> asset:mob/0175.queen_bee/tick/skill/tackle_formation/
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill_active

# 汎用ターゲット選択処理
    function asset:mob/0175.queen_bee/tick/skill/common/select_target/

# 突進前の挙動
# プレイヤーをみる
    execute if score @s General.Mob.Tick matches 10 facing entity @p[tag=4V.Target] eyes run function asset:mob/0175.queen_bee/tick/common/tp/
# 突進用モデルに変える
    execute if score @s General.Mob.Tick matches 10 on passengers run data modify entity @s item.tag.CustomModelData set value 20053

# SpawnMarkerを基準として、プレイヤーを見ながら回転する
    execute if score @s General.Mob.Tick matches 10..130 positioned as @e[type=marker,tag=4V.SpawnMarker,distance=..100,sort=nearest,limit=1] facing entity @s feet rotated ~1.2 0 positioned ^ ^ ^9 facing entity @p[tag=4V.Target] feet run function asset:mob/0175.queen_bee/tick/common/tp/

# ハチを召喚
    execute if score @s General.Mob.Tick matches 20 at @s positioned ^2.5 ^0.5 ^ run function asset:mob/0175.queen_bee/tick/skill/tackle_formation/summon_bee
    execute if score @s General.Mob.Tick matches 20 at @s positioned ^-2.5 ^0.5 ^ run function asset:mob/0175.queen_bee/tick/skill/tackle_formation/summon_bee
    execute if score @s General.Mob.Tick matches 30 at @s positioned ^4.0 ^0.5 ^ run function asset:mob/0175.queen_bee/tick/skill/tackle_formation/summon_bee
    execute if score @s General.Mob.Tick matches 30 at @s positioned ^-4.0 ^0.5 ^ run function asset:mob/0175.queen_bee/tick/skill/tackle_formation/summon_bee
    execute if score @s General.Mob.Tick matches 40 at @s positioned ^5.5 ^0.5 ^ run function asset:mob/0175.queen_bee/tick/skill/tackle_formation/summon_bee
    execute if score @s General.Mob.Tick matches 40 at @s positioned ^-5.5 ^0.5 ^ run function asset:mob/0175.queen_bee/tick/skill/tackle_formation/summon_bee

# 隊列を組む
    execute if score @s General.Mob.Tick matches 10..130 at @s run function asset:mob/0175.queen_bee/tick/skill/tackle_formation/set_formation

# 突進
    execute if score @s General.Mob.Tick matches 130 at @s run playsound entity.bee.death hostile @a[distance=..20] ~ ~ ~ 2 1 1
    execute if score @s General.Mob.Tick matches 130.. at @s run function asset:mob/0175.queen_bee/tick/skill/tackle_formation/tackle

# 汎用ターゲット選択処理のリセット
    function asset:mob/0175.queen_bee/tick/skill/common/select_target/reset

# スキルのリセット
    execute if score @s General.Mob.Tick matches 160.. run function asset:mob/0175.queen_bee/tick/skill/reset
