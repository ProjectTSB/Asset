#> asset:artifact/1607.dimension_gate/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1607.dimension_gate/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 連続使用チェック
    function asset:artifact/1607.dimension_gate/trigger/rapid_use/check

# ターゲットの背後にワープ
    execute positioned as @e[type=#lib:living_without_player,tag=Target,distance=..20,limit=1] rotated ~ 0 positioned ^ ^1.8 ^1.6 run tp @s ~ ~ ~ facing entity @e[type=#lib:living_without_player,tag=Target,distance=..20,limit=1] feet

# 演出
    playsound entity.enderman.teleport player @a ~ ~ ~ 1 1.3
    execute at @s run playsound entity.enderman.teleport player @a ~ ~ ~ 1 1.3

# Object召喚
    # ワープ前の位置
        data modify storage api: Argument.ID set value 1186
        execute anchored eyes positioned ^ ^ ^3 facing ^ ^ ^-1 run function api:object/summon
    # ワープ後の位置
        data modify storage api: Argument.ID set value 1186
        execute at @s anchored eyes positioned ^ ^ ^-1.5 run function api:object/summon
