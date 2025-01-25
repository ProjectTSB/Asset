#> asset:object/1052.maid/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1052/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 何があっても透明化
    effect give @s invisibility infinite 1 true

# タグとチーム消す（initできえねぇーーー）
    tag @s remove Enemy
    team leave @s

# 召喚者に一時的にタグ付け
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute at @a if score $OwnerID Temporary = @p UserID as @p run tag @s add 1052.Owner

# 召喚者が近くにいるなら、止まる
    execute if entity @a[tag=1052.Owner,distance=..5] run effect give @s slowness 1 127 true

# 敵が近くにいたら、射撃用意
    execute if entity @a[tag=1052.Owner,distance=..5] if entity @e[type=#lib:hostile,tag=Enemy,tag=!Uninterferable,distance=..14] run function asset:object/1052.maid/tick/action

# 召喚者が離れ過ぎたら死ぬ
    execute unless entity @a[tag=1052.Owner,distance=..30] run function asset:object/1052.maid/tick/kill


# 召喚者のタグを削除
    tag @a[tag=1052.Owner] remove 1052.Owner

# 消滅処理
    execute if score @s General.Object.Tick matches 240.. run function asset:object/1052.maid/tick/kill
