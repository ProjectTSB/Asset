#> asset:mob/0437.lawless_iron_doll/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/437/death

# モデルを削除。処理の実行順の関係で、Targetのタグの方は使えない。
    execute as @e[type=item_display,tag=A5.ModelRoot,sort=nearest,limit=1] run function animated_java:frestchika/remove/this

# 付近のプレイヤーのほうを向く。万が一付近に誰もいなかった場合も、後続の召喚は成功する
    execute facing entity @p[gamemode=!spectator,distance=..64] eyes run tp @s ~ ~ ~ ~ 0

# 撃破演出用オブジェクトを召喚。
    data modify storage api: Argument.ID set value 2240
    execute at @s run function api:object/summon

# マーカーを片付ける。このモブが召喚するマーカーは、すべて"A5.Marker"というタグを持っている
    kill @e[type=marker,tag=A5.Marker,distance=..64]

# Super!
    function asset:mob/super.death
