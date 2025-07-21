#> asset:artifact/1079.allochromatic/click/get_resonance_level
#
# 共鳴の強さを取得
#
# これは、この神器がピジョンブラッド (ID: 1078) と有するシナジーを軽減し、
# 「二人による連携攻撃」によって真価を発揮するような調整のために行われている。
#
# @within function asset:artifact/1079.allochromatic/click/3.main

# 最大値が取得できているなら終了
    execute if function asset:artifact/1079.allochromatic/predicate/has_resonance_other run return fail
# 共鳴・紅の取得を試みる
    data modify storage api: Argument.ID set value 228
    function api:entity/mob/effect/get/from_id
# 効果を持っていないなら終了
    execute unless data storage api: Return.Effect run return fail
# 自分なら 1 を、自分でないなら 2 を設定
    execute if entity @s[tag= this] run data modify storage asset:temp TZ.Resonance.Level set value 1
    execute if entity @s[tag=!this] run data modify storage asset:temp TZ.Resonance.Level set value 2
