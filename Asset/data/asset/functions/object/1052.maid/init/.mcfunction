#> asset:object/1052.maid/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1052/init


    tag @s add 1052.Init
# 召喚者が殴る(意味ある？これ。なんか敵対してる気がしないんだけど。まあそもそも召喚してすぐ敵対するしええか...)
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute at @a if score $OwnerID Temporary = @p UserID as @p run damage @e[type=zombie,tag=1052.Init,distance=..10,sort=nearest,limit=1] 1 player_attack by @s
    data modify entity @s Invulnerable set value 1
# リセット
    scoreboard players reset $OwnerID Temporary
    tag @s remove 1052.Init
