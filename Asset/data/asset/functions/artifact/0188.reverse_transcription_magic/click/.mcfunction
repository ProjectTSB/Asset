#> asset:artifact/0188.reverse_transcription_magic/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/188/click/

# MPをOffhandItemのMPRequireに設定
    execute store result score $Set Lib run data get storage asset:context Items.offhand.tag.TSB.MPCost
    tellraw @s [{"text": "MPが ["},{"nbt": "Inventory[{Slot:-106b}].tag.display.Name","storage": "asset:context","interpret": true},{"text": "] の消費MP [ "},{"score": {"name": "$Set","objective": "Lib"}},{"text": " ] になった！"}]
    function lib:mp/set
# 演出
    playsound ogg:random.levelup player @s ~ ~ ~ 1 1 1
    particle totem_of_undying ~ ~1.5 ~ 0.5 1 0.5 0 100 force @s
