#> asset:object/1146.rubeus_resonance/tick/get_owner/
#
# Owner 取得処理
#
# @within function asset:object/1146.rubeus_resonance/tick/

# 所有者を特定
    function asset:object/1146.rubeus_resonance/tick/get_owner/do.m with storage asset:context this
# いないなら自壊する
    execute unless entity @a[tag=VU.Owner,limit=1] run kill @s
