#> asset:mob/0365.frestchika/tick/base_move/skill/select/roll.m
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/select/

# ロール
    $execute store result storage asset:context this.Skill.Roll int 1 run random value 1..$(Count)

# 取得する
    function asset:mob/0365.frestchika/tick/base_move/skill/select/get.m with storage asset:context this.Skill

# リセット
    data remove storage asset:context this.Skill.Count
