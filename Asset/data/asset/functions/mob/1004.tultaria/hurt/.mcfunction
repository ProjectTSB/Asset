#> asset:mob/1004.tultaria/hurt/
#
<<<<<<< HEAD
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/1004/hurt
=======
# Mobの被ダメージ時の処理
#
<<<<<<<< HEAD:Asset/data/asset/functions/mob/1004.tultaria/hurt/2.hurt.mcfunction
# @within function asset:mob/1004.tultaria/hurt/1.trigger
========
# @within function asset:mob/alias/1004/hurt
#> private
# @private
    #declare score_holder $HealthPercent
>>>>>>>> master:Asset/data/asset/functions/mob/1004.tultaria/hurt/.mcfunction

# 演出
    playsound minecraft:entity.generic.hurt hostile @a ~ ~ ~ 1 0.7

<<<<<<<< HEAD:Asset/data/asset/functions/mob/1004.tultaria/hurt/2.hurt.mcfunction
# 体力チェック
    function asset:mob/1004.tultaria/hurt/3.check_health
========
# タグを消す
    tag @s remove RW.HPless75per
    tag @s remove RW.HPless50per

# タグ付与
# 75%以下
    execute if score $HealthPercent Temporary matches ..75 run tag @s add RW.HPless75per
# HP50%以下
    execute if score $HealthPercent Temporary matches ..50 run tag @s add RW.HPless50per
# HP40%以下
    execute if score $HealthPercent Temporary matches ..40 run tag @s add RW.HPless40per
# HP30%以下
    execute if score $HealthPercent Temporary matches ..30 run tag @s add RW.HPless30per

# リセット
    scoreboard players reset $HealthPercent
>>>>>>>> master:Asset/data/asset/functions/mob/1004.tultaria/hurt/.mcfunction
>>>>>>> master
