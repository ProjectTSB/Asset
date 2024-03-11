#> asset:artifact/1079.allochromatic/trigger/5.shot
#
# 銃の発射時の処理
#
# @within function asset:artifact/1079.allochromatic/trigger/3.main

# 演出
    playsound entity.firework_rocket.blast player @a ~ ~ ~ 0.5 0.5
    playsound entity.firework_rocket.blast player @a ~ ~ ~ 0.5 0.7
    particle block gold_block ^ ^ ^-0.8 0 0 0 1 1
    particle electric_spark ~ ~ ~ 0 0 0 0.2 5

# 射撃する
    function asset:artifact/1079.allochromatic/trigger/6.shot_recursive

# リセット
    tag @s[tag=Landing] remove Landing
    tag @e[type=#lib:living,tag=Target,distance=..20,limit=1] remove Target