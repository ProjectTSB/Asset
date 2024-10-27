#> asset:mob/0055.hetukedah/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/55/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 演出
    playsound entity.ravager.attack hostile @a ~ ~ ~ 1 1
