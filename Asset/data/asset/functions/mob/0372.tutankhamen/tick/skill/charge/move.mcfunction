#> asset:mob/0372.tutankhamen/tick/skill/charge/move
#
# 高速突進とダメージ
#
# @within function asset:mob/0372.tutankhamen/tick/skill/charge/

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# 弱ホーミングダッシュ
    execute facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-80 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^1.5 ~ ~

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 数Tickごとにサウンド
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 2 1.5
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 0.5 0.5
    execute if score $Interval Temporary matches 0 run playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1 0.5
    scoreboard players reset $Interval Temporary

# パーティクル
    particle soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.05 10
    particle dust 0 1 1 2 ~ ~1 ~ 0.5 0.5 0.5 0 10
    execute at @e[type=marker,tag=AC.ModelLocator.Weapon,distance=..16,limit=1] run particle dust 1 1 0 2 ~ ~1 ~ 0.1 0.1 0.1 0 5

# ダメージ判定
    data modify storage api: Argument.Damage set value 20f
# 属性
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
# 補正functionを実行
    function api:damage/modifier
# 対象
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..1] run function api:damage/
# リセット
    function api:damage/reset
