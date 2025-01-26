#> asset:mob/0341.louvert/hurt/last_spell_start
#
# ラストスペル移行
#
# @within function asset:mob/0341.louvert/hurt/store_hpper

# アニメーションストップ
    function asset:mob/0341.louvert/tick/animation/all_stop

# ラストスペル
    scoreboard players set @s 9H.AnimationNum 151

# アニメーションリセット
    scoreboard players set @s 9H.AnimationTick 0

# ラストスペルを実行したというタグを付ける
    tag @s add 9H.DoLastSpell
