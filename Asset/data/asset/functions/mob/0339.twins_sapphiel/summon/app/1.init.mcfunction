#> asset:mob/0339.twins_sapphiel/summon/app/1.init
#
# Mobの召喚時の処理・wither_skeletonの初期化（独自実装）
#
# @within function asset:mob/0339.twins_sapphiel/summon/2.summon

# 透明化
    effect give @s invisibility infinite 0 true

# スコア初期化
    scoreboard players set @s 9F.AnimationTimer 0
    scoreboard players set @s 9F.ActionCount 0

# 初期化開始
    tag @s add 9F.Init

# TODO:登場演出再生
    # tag @s add 9F.Skill.Rod.Start

# 待機開始 - 登場演出が完成したら、ここではなく登場演出のendに移行させる
    tag @s add 9F.State.Await
