#> asset:artifact/1076.utu_rundeath/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1076.utu_rundeath/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 画面エフェクト
    title @s times 0 2 2t
    title @s title {"text":"\uE010","font":"screen_effect","color":"#00000"}
# 音
    playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2
    playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2
    playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2

# 最大ヒット数
    scoreboard players set $TW.Count Temporary 6

# 前方にいるモブにタグをつける
    execute positioned ^ ^ ^30 run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..25] add TW.Target

# 前方にいるモブ"が"不可視の即着弾飛ばす
    execute as @e[type=#lib:living,tag=Enemy,tag=TW.Target,tag=!Uninterferable,distance=..25,sort=random] at @s anchored eyes positioned ^ ^ ^ facing entity @p[tag=this,distance=..25] eyes run function asset:artifact/1076.utu_rundeath/trigger/shot

# リセット
    execute positioned ^ ^ ^30 run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..25] remove TW.Target
    execute positioned ^ ^ ^30 run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..25] remove Landing
    scoreboard players reset $TW.Count Temporary
