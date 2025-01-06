#> asset:mob/0341.louvert/tick/animation/6_2_moving/end
#
# アニメーション終了時分岐
#
# @within function asset:mob/0341.louvert/tick/animation/6_2_moving/

# 通常終了
    scoreboard players set @s 9H.AnimationNum 63

# プレイヤーが近くにいる時
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..8,sort=nearest,limit=1] run scoreboard players set @s 9H.AnimationNum 64

# スコア初期化
    scoreboard players set @s 9H.AnimationTick 0