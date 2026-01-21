#> asset:mob/0374.gray_coffin/tick/summon
#
# 怨霊弾を召喚する
#
# @within function asset:mob/0374.gray_coffin/tick/open_and_close

#> Private
# @private
    #declare tag Target

# ランダムなプレイヤーをターゲットとする
    tag @r[gamemode=!spectator,distance=..50] add Target

# プレイヤーの方を見る
    tp @s ~ ~ ~ facing entity @p[tag=Target] eyes

# 召喚
    data modify storage api: Argument.ID set value 2092
    data modify storage api: Argument.FieldOverride.StartDelay set value 50
    execute store result storage api: Argument.FieldOverride.TargetID int 1 run scoreboard players get @a[tag=Target,limit=1] UserID
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=polar_bear,tag=this,distance=..5,sort=nearest,limit=1] MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    function api:object/summon

# リセット
    tag @p[tag=Target] remove Target

# 消滅
    kill @s
