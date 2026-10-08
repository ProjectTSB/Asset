#> asset:mob/0321.mini_guardian/rotate/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/321/rotate

# 攻撃中 または のけぞり中 でなければ追尾
    execute if entity @s[tag=!8X.Mode.Attack] unless score @s 8X.HurtTime matches 1.. run function asset:mob/super.method
