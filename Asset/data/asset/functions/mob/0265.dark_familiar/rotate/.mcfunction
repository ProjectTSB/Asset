#> asset:mob/0265.dark_familiar/rotate/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/265/rotate

# 近くにサモナーがいればサモナーに対して追尾
    execute facing entity @e[type=zombie,scores={MobID=264},distance=..30] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-2000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~

# 近くにサモナーがいないのであれば、プレイヤーに突っ込んでくる
    execute unless entity @e[type=zombie,scores={MobID=264},distance=..30] run function asset:mob/super.method
