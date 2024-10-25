#> asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/main
#
# 追撃のメイン処理
#
# @within function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/loop

# Tickスコア増加
    scoreboard players add @s SP.Tick 1

# OwnerにTagを付与
    execute at @a[distance=..100] if score @s SP.UserID = @p UserID run tag @p add SP.Owner

# Ownerの最大体力の0.05倍をスコアで取得
    execute as @p[tag=SP.Owner] run function api:modifier/max_health/get
    execute store result score @s SP.MaxHealth run data get storage api: Return.MaxHealth 0.05

# 最大HP20につき1本増加 最大10本まで
# 左右対称になるように、偶数本目は2パターン配置箇所が存在する

# 1本目
    execute if entity @s[scores={SP.Tick=1,SP.MaxHealth=1..}] positioned ^ ^5 ^-1 run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/summon_sword

# 2本目
    execute if entity @s[scores={SP.Tick=13,SP.MaxHealth=2}] positioned ^ ^5 ^1 run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/summon_sword
    execute if entity @s[scores={SP.Tick=13,SP.MaxHealth=3..}] positioned ^1 ^5 ^-1 run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/summon_sword

# 3本目
    execute if entity @s[scores={SP.Tick=13,SP.MaxHealth=3..}] positioned ^-1 ^5 ^-1 run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/summon_sword

# 4本目
    execute if entity @s[scores={SP.Tick=15,SP.MaxHealth=4}] positioned ^ ^5 ^1 run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/summon_sword
    execute if entity @s[scores={SP.Tick=15,SP.MaxHealth=5..}] positioned ^1 ^5 ^1 run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/summon_sword

# 5本目
    execute if entity @s[scores={SP.Tick=15,SP.MaxHealth=5..}] positioned ^-1 ^5 ^1 run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/summon_sword

# 6本目
    execute if entity @s[scores={SP.Tick=17,SP.MaxHealth=6}] positioned ^ ^5 ^1 run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/summon_sword
    execute if entity @s[scores={SP.Tick=17,SP.MaxHealth=7..}] positioned ^2 ^5 ^ run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/summon_sword

# 7本目
    execute if entity @s[scores={SP.Tick=17,SP.MaxHealth=7..}] positioned ^-2 ^5 ^ run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/summon_sword

# 8本目
    execute if entity @s[scores={SP.Tick=19,SP.MaxHealth=8}] positioned ^ ^5 ^1 run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/summon_sword
    execute if entity @s[scores={SP.Tick=19,SP.MaxHealth=9..}] positioned ^ ^5 ^1 run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/summon_sword

# 9本目
    execute if entity @s[scores={SP.Tick=19,SP.MaxHealth=9..}] positioned ^ ^5 ^-2 run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/summon_sword

# 10本目
    execute if entity @s[scores={SP.Tick=21,SP.MaxHealth=10..}] positioned ^ ^5 ^2 run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/summon_sword

# OwnerのTagを削除
    tag @p[tag=SP.Owner] remove SP.Owner
