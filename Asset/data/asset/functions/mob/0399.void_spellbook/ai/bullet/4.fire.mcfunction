#> asset:mob/0399.void_spellbook/ai/bullet/4.fire
#
# 発射
#
# @within function asset:mob/0399.void_spellbook/tick/

# Markerを召喚
    execute positioned ~ ~1 ~ run summon marker ~ ~ ~ {Tags:["B3.Marker"]}

# 前方拡散設定
    data modify storage lib: Argument.Distance set value 8.0
    data modify storage lib: Argument.Spread set value 3

# 前方拡散を実行する
    execute as @e[type=marker,tag=B3.Marker,distance=..3] at @s facing entity @a[tag=!PlayerShouldInvulnerable,nbt={OnGround:0b},distance=..100,sort=random,limit=1] eyes run function lib:forward_spreader/circle

# 発射
    execute positioned ~ ~1 ~ facing entity @e[type=marker,tag=B3.Marker,distance=..15,limit=1] feet run function asset:mob/0399.void_spellbook/ai/bullet/0.summon

# マーカーを戻してあげる
    kill @e[type=marker,tag=B3.Marker,distance=..15,limit=1]
