#> asset:mob/0186.ferocious_bee/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/186/hurt

# 演出
    playsound entity.bee.hurt hostile @a ~ ~ ~ 1 1

# 以下の処理はDoTの場合は適用されない
    execute if data storage asset:context Hurt{IsDoT:true} run return fail

# 以下の処理はプレイヤーからの攻撃でないと適用されない
    execute if data storage asset:context Hurt{}

# HurtTimeをフィールドで疑似的に管理
    data modify storage asset:context this.HurtTime._ set from storage asset:context this.HurtTime.Max

# のけぞり用にNoAIを無効化
    data modify entity @s NoAI set value 0b
    data modify storage asset:context this.NoAI set value true
