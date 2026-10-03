#> asset:object/1166.after_glow/tick/find_highest_hp_enemy
#
# 最もHPの高い敵を検索
#
# @within asset:object/1166.after_glow/tick/check
#> Private
# @private
    #declare score_holder $UserID
    #declare score_holder $14E.HighestHp
    #declare tag 14E.SearchTarget
    #declare tag 14E.TempTarget
    #declare tag 14E.ClearTarget


# 検索対象：使用プレイヤーの半径15m以内の最もHPの高い敵

# プレイヤーの半径15m内のすべての敵に検索対象Tagを付与
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..15] add 14E.SearchTarget

# HPをtemporaryに入れる
    execute as @e[type=#lib:living_without_player,tag=14E.SearchTarget,distance=..15] run function asset:object/1166.after_glow/tick/get_hp

# 全員のHPと比較する
    execute as @e[type=#lib:living_without_player,tag=14E.SearchTarget,distance=..15] run scoreboard players operation $14E.HighestHp Temporary > @s Temporary

# 最大値の敵に仮ターゲットtagを付与
    execute as @e[type=#lib:living_without_player,tag=14E.SearchTarget,distance=..15] if score @s Temporary = $14E.HighestHp Temporary run tag @s add 14E.TempTarget

# 仮ターゲットの中で近い敵に自身をtpと狙いを定める音
    execute if entity @e[type=#lib:living_without_player,tag=14E.TempTarget,distance=..15,sort=nearest,limit=1] run function asset:object/1166.after_glow/tick/vfx/lock_on
    tp @s @e[type=#lib:living_without_player,tag=14E.TempTarget,distance=..15,sort=nearest,limit=1]

# リセット
    scoreboard players reset $14E.HighestHp Temporary
    scoreboard players reset @e[type=#lib:living_without_player,tag=14E.SearchTarget,distance=..15] Temporary
    tag @e[type=#lib:living_without_player,tag=14E.SearchTarget,distance=..15] remove 14E.SearchTarget
    tag @e[type=#lib:living_without_player,tag=14E.TempTarget,distance=..15] remove 14E.TempTarget
