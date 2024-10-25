#> asset:object/2054.lastboss_white_pillar/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2054/init

#> ここでだけ使うInitタグ
# @private
#declare tag 2054.Init

# ユーザーIDをフィールドにいれる
    execute store result storage asset:context this.TargetID int 1 run scoreboard players get @p[distance=..64] UserID

# 付近の対象を狙う
    execute facing entity @p[distance=..64] eyes run tp @s ~ ~ ~ ~ 0


# サウンド
    playsound ogg:block.respawn_anchor.deplete1 hostile @a ~ ~ ~ 2 2
    playsound entity.lightning_bolt.impact hostile @p ~ ~ ~ 0.3 0 0
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:block.amethyst_block.resonate hostile @a ~ ~ ~ 1 1

# 地面を探す
    function asset:object/2054.lastboss_white_pillar/init/search_ground
