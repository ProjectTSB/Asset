#> asset:mob/0079.return_thunder/register
# @within asset:mob/alias/79/register

# ID (int)
    data modify storage asset:mob ID set value 79
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
