#> asset:mob/0082.thunder_curtain/register
# @within asset:mob/alias/82/register

# ID (int)
    data modify storage asset:mob ID set value 82
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set from entity @s CustomName
# Mobの説明文 (TextComponentString[]) (オプション)
    # data modify storage asset:mob Lore set value

# フィールド
    # data modify storage asset:mob Field set value {}
