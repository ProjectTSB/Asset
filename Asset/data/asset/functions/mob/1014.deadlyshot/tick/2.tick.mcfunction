#> asset:mob/1014.deadlyshot/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1014.deadlyshot/tick/1.trigger

#> トゥルの胴体位置を定義してるマーカー
# @private
#declare tag RW.BodyMarker

# スコア加算
    scoreboard players add @s S6.Tick 1

# 範囲内ならホーミングじみた移動
    execute facing entity @p[distance=..30] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-3000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# パーティクル
    particle dust 0.816 0 1 0.5 ~ ~ ~ 0 0 0 0 1

# プレイヤーの衝突判定
    execute positioned ~-0.5 ~0.0 ~-0.5 if entity @p[dx=0] run function asset:mob/1014.deadlyshot/tick/3.hit

# 消える
    execute if score @s S6.Tick matches 60.. run kill @s