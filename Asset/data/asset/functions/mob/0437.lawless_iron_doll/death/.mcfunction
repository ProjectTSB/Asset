#> asset:mob/0437.lawless_iron_doll/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/437/death

# モデルを削除。処理の実行順の関係で、Targetのタグの方は使えない。
    execute as @e[type=item_display,tag=C5.ModelRoot,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/remove/this

# 付近のプレイヤーのほうを向く。万が一付近に誰もいなかった場合も、後続の召喚は成功する
    execute facing entity @p[gamemode=!spectator,distance=..256] eyes run tp @s ~ ~ ~ ~ 0

# マーカーを片付ける。このモブが召喚するマーカーは、すべて"C5.Marker"というタグを持っている
    kill @e[type=marker,tag=C5.Marker,distance=..256]

# こっちを向く
    execute facing entity @p[gamemode=!spectator,distance=..256] eyes run tp @s ~ ~ ~ ~ 0

# 演出
    particle explosion_emitter ~ ~1.5 ~ 0 0 0 0 1 force @a[distance=..64]
    playsound entity.generic.explode hostile @a ~ ~ ~ 2 1.5
    playsound entity.iron_golem.death hostile @a ~ ~ ~ 2 1

# 撃破演出用オブジェクトを召喚
    data modify storage api: Argument.ID set value 2247
    execute at @s run function api:object/summon

# 臆病風が吹かなくなる
    execute as @a[distance=..256] run function asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/remove

# Super!
    function asset:mob/super.death
