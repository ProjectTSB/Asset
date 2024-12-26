#> asset:mob/0077.chorus_zombie/attack/teleport/secure
# @within function
#   asset:mob/0077.chorus_zombie/attack/teleport/
#   asset:mob/0077.chorus_zombie/attack/teleport/secure

# スコアを減算
    scoreboard players remove $25.LoopCount Temporary 1

# 安全かどうか確認
    execute positioned ~ ~0.5 ~ if predicate asset:mob/0077.chorus_zombie/safe_place run tp @s ~ ~-0.5 ~
    execute positioned ~ ~0.5 ~ if predicate asset:mob/0077.chorus_zombie/safe_place run scoreboard players set $25.Secure Temporary 1

# 再帰
    execute if score $25.Secure Temporary matches 0 if score $25.LoopCount Temporary matches 0.. positioned ~ ~-1 ~ run function asset:mob/0077.chorus_zombie/attack/teleport/secure
