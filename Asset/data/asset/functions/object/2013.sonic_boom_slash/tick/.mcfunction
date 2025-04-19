#> asset:object/2013.sonic_boom_slash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2013/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# スコアが2以上なら可視化
    execute if score @s General.Object.Tick matches 2.. run data modify entity @s item set value {id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16711731,CustomModelData:20241}}

# 前方にTP
    execute at @s run tp @s ^ ^ ^1.5

# パーティクル
    particle flame ^ ^ ^-1 0 0 0 0.15 4

# スコアが25以上ならキル
    execute if score @s General.Object.Tick matches 25.. on passengers run kill @s
    execute if score @s General.Object.Tick matches 25.. run kill @s

# ヒット判定
    # Markerからデータを持ってくる
        execute on passengers run data modify storage asset:temp 2013.ID set from entity @s data
    # ダメージを与える
        execute positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] at @s run function asset:object/2013.sonic_boom_slash/tick/damage
    # Markerにデータを保存
        execute on passengers run data modify entity @s data set from storage asset:temp 2013.ID
        data remove storage asset:temp 2013.ID

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# リセット
    data remove storage asset:temp 2013
