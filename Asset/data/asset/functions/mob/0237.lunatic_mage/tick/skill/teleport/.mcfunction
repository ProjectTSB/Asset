#> asset:mob/0237.lunatic_mage/tick/skill/teleport/
#
# 自身の出現位置を中心として拡散テレポート
#
# @within function asset:mob/0237.lunatic_mage/tick/skill/reset

# ワープ中はモデル外して透明化
    item replace entity @s armor.head with minecraft:air

# 透明化時間設定
    scoreboard players set @s 6L.Invisible 5

# パーティクル
    function asset:mob/0237.lunatic_mage/tick/skill/teleport/vfx

# 実行座標を中心として拡散
    data modify storage lib: Argument.Bounds set value [[9d,9d],[0.0d,0.0d],[9d,9d]]
    execute at @e[type=marker,tag=6L.SpawnPoint,distance=..100,sort=nearest,limit=1] run function lib:spread_entity/

# パーティクル
    execute at @s run function asset:mob/0237.lunatic_mage/tick/skill/teleport/vfx

# 色々リセット
    scoreboard players set @s General.Mob.Tick -10
    scoreboard players reset @s 6L.TeleportCount
