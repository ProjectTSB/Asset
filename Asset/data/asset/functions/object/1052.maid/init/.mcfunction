#> asset:object/1052.maid/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1052/init


    tag @s add 1052.Init
# 召喚者が殴る(意味ある？これ。なんか敵対してる気がしないんだけど。まあそもそも召喚してすぐ敵対するしええか...)
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute at @a if score $OwnerID Temporary = @p UserID as @p run damage @e[type=zombie,tag=1052.Init,distance=..10,sort=nearest,limit=1] 1 fireball by @s
    data modify entity @s Invulnerable set value 1

# 頭をランダムにするぅ！

#> private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算するやーつ
    scoreboard players operation $Random Temporary %= $4 Const
# デバッグのコマンド
    #scoreboard players set $Random Temporary 0

# スキル選択
    #execute if score $Random Temporary matches 0 run
    execute if score $Random Temporary matches 1 run item replace entity @s armor.head with stick{CustomModelData:20404} 1
    execute if score $Random Temporary matches 2 run item replace entity @s armor.head with stick{CustomModelData:20405} 1
    execute if score $Random Temporary matches 3 run item replace entity @s armor.head with stick{CustomModelData:20406} 1
# リセット
    scoreboard players reset $Random Temporary


# リセット
    scoreboard players reset $OwnerID Temporary
    tag @s remove 1052.Init
