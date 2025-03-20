#> asset:artifact/0469.crystal_shotgun/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0469.crystal_shotgun/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    tp @s ~ ~ ~ ~ ~-5
    playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.3 1.6 0
    playsound minecraft:entity.breeze.jump player @a ~ ~ ~ 1 0.7
    playsound minecraft:entity.breeze.jump player @a ~ ~ ~ 1 0
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.wither.hurt player @a ~ ~ ~ 1 1.5


# 10回撃つ
    function asset:artifact/0469.crystal_shotgun/trigger/shot
    function asset:artifact/0469.crystal_shotgun/trigger/shot
    function asset:artifact/0469.crystal_shotgun/trigger/shot
    function asset:artifact/0469.crystal_shotgun/trigger/shot
    function asset:artifact/0469.crystal_shotgun/trigger/shot
    function asset:artifact/0469.crystal_shotgun/trigger/shot
    function asset:artifact/0469.crystal_shotgun/trigger/shot
    function asset:artifact/0469.crystal_shotgun/trigger/shot
    function asset:artifact/0469.crystal_shotgun/trigger/shot
    function asset:artifact/0469.crystal_shotgun/trigger/shot
