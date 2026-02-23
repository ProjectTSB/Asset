#> asset:object/1061.azure_jelly/tick/angle/switch_up_down
#
# トグルで上下どちらかにいるかを切り替える
#
# @within function asset:object/1061.azure_jelly/tick/angle/init

# トグルでtrue/falseを切り替え
    execute if data storage asset:context this{IsUpper:true} run return run data modify storage asset:context this.IsUpper set value false

    execute unless data storage asset:context this{IsUpper:true} run data modify storage asset:context this.IsUpper set value true
