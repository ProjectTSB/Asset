#> asset:artifact/1327.lunatic_torch/trigger/find_target
#
#
#
# @within function asset:artifact/1327.lunatic_torch/trigger/3.main

#> Private
# @private
    #declare tag TempTarget
    #declare score_holder $HighestScore

# 検索対象：現在MPが最も多いプレイヤー

# $HighestScoreの初期化
    scoreboard players set $HighestScore Temporary 0

# 全員のスコアと比較する
    execute as @a[tag=10V.SearchTarget] run scoreboard players operation $HighestScore Temporary < @s Temporary

# スコアが最も多いプレイヤーの中で最も近いプレイヤーにtagをつける
    execute as @a[tag=10V.SearchTarget] if score @s Temporary = $HighestScore Temporary run tag @s add TempTarget
    tag @a[tag=TempTarget,sort=nearest,limit=1] add 10V.BuffTarget

# 対象となったプレイヤーのSearchTargetを削除
    tag @p[tag=TempTarget,tag=10V.BuffTarget] remove 10V.SearchTarget

# リセット
    scoreboard players reset $HighestScore Temporary
    tag @a[tag=TempTarget] remove TempTarget
