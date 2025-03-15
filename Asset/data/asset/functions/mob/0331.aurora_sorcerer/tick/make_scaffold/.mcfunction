#> asset:mob/0331.aurora_sorcerer/tick/make_scaffold/
#
# 足場を作る
#
# @within function asset:mob/0331.aurora_sorcerer/tick/

# 足場生成不可Tickを設定
    # data modify storage asset:context this.CannotMakeScaffoldTick set value 2

# 慣性リセット
    tp @s 0 0 0
    tp @s ~ ~ ~

# 3x3の足場を作る
    execute positioned ~ ~-0.6 ~ align xyz run function asset:mob/0331.aurora_sorcerer/tick/make_scaffold/summon
    execute positioned ~1 ~-0.6 ~ align xyz run function asset:mob/0331.aurora_sorcerer/tick/make_scaffold/summon
    execute positioned ~-1 ~-0.6 ~ align xyz run function asset:mob/0331.aurora_sorcerer/tick/make_scaffold/summon
    execute positioned ~ ~-0.6 ~1 align xyz run function asset:mob/0331.aurora_sorcerer/tick/make_scaffold/summon
    execute positioned ~ ~-0.6 ~-1 align xyz run function asset:mob/0331.aurora_sorcerer/tick/make_scaffold/summon
    execute positioned ~1 ~-0.6 ~1 align xyz run function asset:mob/0331.aurora_sorcerer/tick/make_scaffold/summon
    execute positioned ~1 ~-0.6 ~-1 align xyz run function asset:mob/0331.aurora_sorcerer/tick/make_scaffold/summon
    execute positioned ~-1 ~-0.6 ~1 align xyz run function asset:mob/0331.aurora_sorcerer/tick/make_scaffold/summon
    execute positioned ~-1 ~-0.6 ~-1 align xyz run function asset:mob/0331.aurora_sorcerer/tick/make_scaffold/summon
