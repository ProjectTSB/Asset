#> asset:object/2221.aurora_scaffold/tick/break/process/do
#
#
#
# @within function asset:object/2221.aurora_scaffold/tick/break/process/

#> Private
# @private
    #declare score_holder $2221.ID

# 現座標が水色ステンドグラスでないなら消滅
    execute unless block ~ ~ ~ cyan_stained_glass run kill @s

# ID取得
    execute store result score $2221.ID Temporary run data get storage asset:context this.ID

# this.CMDListの一番後ろのIDを指定してdisplayのモデルを変更
    data modify entity @s item.tag.CustomModelData set from storage asset:context this.CMDList[-1]

# リセット
    scoreboard players reset $2221.ID Temporary
