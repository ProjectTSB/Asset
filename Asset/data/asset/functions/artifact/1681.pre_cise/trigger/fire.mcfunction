#> asset:artifact/1681.pre_cise/trigger/fire
#
# big_preciseの位置と向きから、射程20mの弾を1発発射する
#
# @input as big_precise at big_precise
# @within function asset:artifact/1681.pre_cise/trigger/3.main

# 演出
    playsound entity.generic.explode player @a[distance=..16] ~ ~ ~ 0.5 2

# 弾を進める再帰を開始する
    function asset:artifact/1681.pre_cise/trigger/bullet

# リセット
    tag @s remove PreCise.Landing
