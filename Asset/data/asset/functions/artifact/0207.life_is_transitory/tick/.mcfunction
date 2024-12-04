#> asset:artifact/0207.life_is_transitory/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/207/tick/


# プレイヤーのHPを1に
    scoreboard players set $Set Lib 1
    function lib:score_to_health_wrapper/set

# 効果・演出
    effect give @s invisibility 1 1 true
    particle minecraft:poof ~ ~ ~ 0 0 0 0.1 1