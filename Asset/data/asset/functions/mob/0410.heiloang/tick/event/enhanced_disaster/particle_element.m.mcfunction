#> asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element.m
#
# エンハンスドディザスター
#
# @within asset:mob/0410.heiloang/tick/event/enhanced_disaster/

# 演出
    $execute if score @s BE.Ehd.Fire matches $(Count) run particle flame ~ ~1 ~ 4 4 4 0.1 30 force
    $execute if score @s BE.Ehd.Water matches $(Count) run particle cloud ~ ~1 ~ 4 4 4 0.1 30 force
    $execute if score @s BE.Ehd.Thunder matches $(Count) run particle firework ~ ~1 ~ 4 4 4 0.1 30 force
    $execute if score @s BE.Ehd.Fire matches $(Count) run particle dust 0.831 0.239 0.133 4 ~ ~3 ~ 2 2 2 0 50 force
    $execute if score @s BE.Ehd.Water matches $(Count) run particle dust 0.471 0.894 1 4 ~ ~3 ~ 2 2 2 0 50 force
    $execute if score @s BE.Ehd.Thunder matches $(Count) run particle dust 1 0.855 0.376 4 ~ ~3 ~ 2 2 2 0 50 force
    $execute if score @s BE.Ehd.Fire matches $(Count) run particle dust 0.831 0.239 0.133 4 ~ ~1 ~ 4 4 4 0 50 force
    $execute if score @s BE.Ehd.Water matches $(Count) run particle dust 0.471 0.894 1 4 ~ ~1 ~ 4 4 4 0 50 force
    $execute if score @s BE.Ehd.Thunder matches $(Count) run particle dust 1 0.855 0.376 4 ~ ~1 ~ 4 4 4 0 50 force
