#> asset:artifact/0188.reverse_transcription_magic/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0188.reverse_transcription_magic/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound ogg:random.levelup player @s ~ ~ ~ 1 1 1
    particle totem_of_undying ~ ~1.5 ~ 0.5 1 0.5 0 100 force @s
# MPをOffhandのMPCostに設定
    execute store result storage api: Argument.MP int 1 run data get storage asset:context Items.offhand.tag.TSB.MPCost
    tellraw @s [{"text": "MPが ["},{"nbt": "Inventory[{Slot:-106b}].tag.display.Name","storage": "asset:context","interpret": true},{"text": "] の消費MP [ "},{"storage": "api:","nbt": "Argument.MP"},{"text": " ] になった！"}]
    function api:mp/set
