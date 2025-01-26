#> asset:mob/0372.tutankhamen/tick/skill/common/select_target
#
# ターゲット選定
#
# @within function asset:mob/0372.tutankhamen/tick/skill/**

# 自身のスコアに突っ込む
    scoreboard players operation @s AC.TargetID = @r[gamemode=!spectator,distance=..50] UserID

# ターゲットのUserIDをフィールドにも突っ込む
    execute store result storage asset:context this.TargetID int 1 run scoreboard players get @s AC.TargetID
