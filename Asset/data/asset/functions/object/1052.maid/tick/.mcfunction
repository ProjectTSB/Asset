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
    execute if entity @a[tag=1052.Owner,distance=..5] if entity @e[type=#lib:hostile,tag=Enemy,distance=..14] run function asset:object/1052.maid/tick/action

# デバッグ用、イラネ
    #execute if entity @a[tag=1052.Owner,distance=..5] if entity @e[type=#lib:hostile,tag=Enemy,distance=..7] run say search
    #execute unless entity @a[tag=1052.Owner,distance=..5] run say tuibi

# 召喚者のタグを削除
    tag @a[tag=1052.Owner] remove 1052.Owner

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
