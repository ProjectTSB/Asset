#> asset:artifact/1555.shift_change/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1555.shift_change/trigger/2.check_condition

#> private
# @private
    #declare tag 177.changed
    #declare tag 177.change_marker

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# 念のためtagとmarkerを削除
    tag @a remove 177.changed
    kill @e[type=marker,tag=177.change_marker]

# 入れ替え対象を決定
    tag @r[tag=!this,predicate=!lib:is_ban_tp_area] add 177.changed

# 対象の場所にマーカー設置
    execute at @a[tag=177.changed,limit=1] run summon marker ~ ~ ~ {Tags:["177.change_marker"]}

# マーカー自身の向きを、対象のプレイヤーの向きと同期する
    execute as @e[type=marker,tag=177.change_marker,limit=1] at @s rotated as @a[tag=177.changed,limit=1] run tp @s ~ ~ ~ ~ ~

# 対象を自身の場所・向きへtp
    execute at @s rotated as @s run tp @a[tag=177.changed,limit=1] ~ ~ ~ ~ ~

# 自分をマーカー(対象が元いた場所・向き)にテレポートさせる
    execute at @e[type=marker,tag=177.change_marker,limit=1] rotated as @e[type=marker,tag=177.change_marker,limit=1] run tp @s ~ ~ ~ ~ ~

# 1. 自分の場所でパーティクルと音を鳴らす
    execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.5 1 0.5 0.05 40 player @a
    execute at @s run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 1.0 1.0 0
# 2. 対象の場所でパーティクルと音を鳴らす
    execute at @a[tag=177.changed,limit=1] run particle minecraft:reverse_portal ~ ~1 ~ 0.5 1 0.5 0.05 40 player @a
    execute at @a[tag=177.changed,limit=1] run playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~ 1.0 1.0 0

# マーカーを削除する
    kill @e[type=marker,tag=177.change_marker]

# 味方のターゲットタグを外してリセットする
    tag @a remove 177.changed
