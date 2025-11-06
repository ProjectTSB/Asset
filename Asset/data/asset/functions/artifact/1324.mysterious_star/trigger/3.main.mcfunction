#> asset:artifact/1324.mysterious_star/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1324.mysterious_star/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 最も現在MPの高い/低いプレイヤーを検索
    function asset:artifact/1324.mysterious_star/trigger/find_target

# 演出
    function asset:artifact/1324.mysterious_star/trigger/vfx/

# 最も現在MPの多いプレイヤーのMPを減少
    data modify storage api: Argument.Fluctuation set value -2
    data modify storage api: Argument.DisableLog set value true
    execute as @p[tag=10S.HighestMPTarget] run function api:mp/fluctuation

# 最も現在MPの少ないプレイヤーのMPを回復
    data modify storage api: Argument.Fluctuation set value 2
    data modify storage api: Argument.DisableLog set value true
    execute as @p[tag=10S.LowestMPTarget] run function api:mp/fluctuation

#say -------
#say @a[tag=10S.HighestMPTarget]
#say @a[tag=10S.LowestMPTarget]

# リセット
    tag @a[tag=10S.HighestMP] remove 10S.HighestMP
    tag @a[tag=10S.HighestMPTarget] remove 10S.HighestMPTarget
    tag @a[tag=10S.LowestMP] remove 10S.LowestMP
    tag @a[tag=10S.LowestMPTarget] remove 10S.LowestMPTarget
