#> asset:mob/0060.self_destructor/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/60/hurt

# 演出
    execute unless block ~ ~ ~ water run playsound entity.tnt.primed hostile @a ~ ~ ~ 1 0.7 0
    execute unless block ~ ~ ~ water run particle smoke ~ ~1.8 ~ 0.3 0.25 0.3 0 15 normal @a
    execute unless block ~ ~ ~ water run particle flame ~ ~1.8 ~ 0.3 0.25 0.3 0 5 normal @a

# 一度でも戦闘したかどうかをフィールドで記録
    data modify storage asset:context this.Fought set value true
