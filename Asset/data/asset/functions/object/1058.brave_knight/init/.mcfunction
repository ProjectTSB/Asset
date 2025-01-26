#> asset:object/1058.brave_knight/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1058/init

#> Private
# @private
    #declare score_holder $Random

# 同IDのプレイヤーを特定
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute at @a[distance=..60] if score $OwnerID Temporary = @p UserID as @p run tag @s add 1058.OwnerPlayer
# 自身にもIDをいれる
    scoreboard players operation @s 1058.OwnerID = @p[tag=1058.OwnerPlayer] UserID

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/

# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const

# メッセージ
    execute if score $Random Temporary matches 0 run tellraw @p[tag=1058.OwnerPlayer] [{"text":"<","color":"white"},{"text":"Brave Knight","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"With courage in my heart","font":"illageralt"}]
    execute if score $Random Temporary matches 1 run tellraw @p[tag=1058.OwnerPlayer] [{"text":"<","color":"white"},{"text":"Brave Knight","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"I will protect you","font":"illageralt"}]
    execute if score $Random Temporary matches 2 run tellraw @p[tag=1058.OwnerPlayer] [{"text":"<","color":"white"},{"text":"Brave Knight","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"I will be your sword","font":"illageralt"}]
    execute if score $Random Temporary matches 3 run tellraw @p[tag=1058.OwnerPlayer] [{"text":"<","color":"white"},{"text":"Brave Knight","color":"#a9b9ca"},{"text":"> ","color":"white"},{"text":"Ready to go","font":"illageralt"}]

# パーティクル
    particle poof ~ ~0.5 ~ 0.1 0.1 0.1 0.05 10

# 頭防具
    item replace entity @s armor.head with stick{CustomModelData:20298}
    item replace entity @s weapon.mainhand with stick{CustomModelData:20299}
    item replace entity @s weapon.offhand with stick{CustomModelData:20300}

# いきなり攻撃はしない
    scoreboard players set @s General.Object.Tick -20

# ライフタイム設定
    scoreboard players set @s 1058.LifeTime 300

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $OwnerID Temporary
    tag @a remove 1058.OwnerPlayer
