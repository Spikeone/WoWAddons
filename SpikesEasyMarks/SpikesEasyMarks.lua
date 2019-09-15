function SEM_OnLoad()
    this:RegisterEvent("UPDATE_MOUSEOVER_UNIT");
    this:RegisterEvent("PLAYER_TARGET_CHANGED")
    this:RegisterEvent("PLAYER_REGEN_ENABLED");
    this:RegisterEvent("PLAYER_REGEN_DISABLED");
    this:RegisterEvent('VARIABLES_LOADED');
    
    --SLASH_SPELLWATCH1 = "/sw";
    SLASH_SPIKESEASYMARKS1 = "/sem";
    SlashCmdList["SPIKESEASYMARKS"] = function(msg)
        SEM_SlashCommandHandler(msg);
    end

    DEFAULT_CHAT_FRAME:AddMessage("SpikesEasyMarks loaded!");
end

isInfight = false;

--SEM_MARKS_LOCAL = {}

SEM_MARKS_DEFAULT = {}
SEM_MARKS_DEFAULT["0xF1300030C101374D"] = 1
SEM_MARKS_DEFAULT["0xF1300059B01E909E"] = 7
SEM_MARKS_DEFAULT["0xF130005AC31E9168"] = 5
SEM_MARKS_DEFAULT["0xF1300059A11E9113"] = 8
SEM_MARKS_DEFAULT["0xF1300059411E965F"] = 6
SEM_MARKS_DEFAULT["0xF1300059AD1E9446"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E942D"] = 4
SEM_MARKS_DEFAULT["0xF13000595F1E9108"] = 6
SEM_MARKS_DEFAULT["0xF13000595F1E910A"] = 4
SEM_MARKS_DEFAULT["0xF1300059411E9662"] = 7
SEM_MARKS_DEFAULT["0xF1300059631E9075"] = 3
SEM_MARKS_DEFAULT["0xF13000593C1E9100"] = 6
SEM_MARKS_DEFAULT["0xF13000593E1E90F8"] = 7
SEM_MARKS_DEFAULT["0xF13000593C1E90FA"] = 4
SEM_MARKS_DEFAULT["0xF1300059551E90F2"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9293"] = 8
SEM_MARKS_DEFAULT["0xF1300059631E904A"] = 8
SEM_MARKS_DEFAULT["0xF13000595E1E905B"] = 8
SEM_MARKS_DEFAULT["0xF1300059A11E914C"] = 7
SEM_MARKS_DEFAULT["0xF1300059A11E911D"] = 7
SEM_MARKS_DEFAULT["0xF13000593F1E9101"] = 7
SEM_MARKS_DEFAULT["0xF130005A091E9130"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E92A1"] = 4
SEM_MARKS_DEFAULT["0xF1300059AB1E9440"] = 2
SEM_MARKS_DEFAULT["0xF130005AB61E924A"] = 8
SEM_MARKS_DEFAULT["0xF130005AC31E922D"] = 5
SEM_MARKS_DEFAULT["0xF13000593E1E90ED"] = 7
SEM_MARKS_DEFAULT["0xF1300059551E90D2"] = 1
SEM_MARKS_DEFAULT["0xF13000595F1E9118"] = 4
SEM_MARKS_DEFAULT["0xF1300059AB1E9469"] = 7
SEM_MARKS_DEFAULT["0xF1300059601E9133"] = 7
SEM_MARKS_DEFAULT["0xF13000595E1E9064"] = 7
SEM_MARKS_DEFAULT["0xF130005AC71E923B"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9467"] = 8
SEM_MARKS_DEFAULT["0xF13000593C1E90F7"] = 4
SEM_MARKS_DEFAULT["0xF13000595F1E9112"] = 6
SEM_MARKS_DEFAULT["0xF130005A841E9152"] = 4
SEM_MARKS_DEFAULT["0xF130005B2B1E90D4"] = 8
SEM_MARKS_DEFAULT["0xF1300059601E9107"] = 7
SEM_MARKS_DEFAULT["0xF130005AC31E916A"] = 2
SEM_MARKS_DEFAULT["0xF1300059B01E909F"] = 8
SEM_MARKS_DEFAULT["0xF1300059EA1E9132"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E945C"] = 8
SEM_MARKS_DEFAULT["0xF1300059A800CE1D"] = 7
SEM_MARKS_DEFAULT["0xF130005A9C1E923D"] = 8
SEM_MARKS_DEFAULT["0xF130005B7D2DC746"] = 7
SEM_MARKS_DEFAULT["0xF1300059EA1E9137"] = 8
SEM_MARKS_DEFAULT["0xF1300059A500CE1A"] = 6
SEM_MARKS_DEFAULT["0xF130005A9C1E922E"] = 8
SEM_MARKS_DEFAULT["0xF1300059AA1E90A9"] = 8
SEM_MARKS_DEFAULT["0xF13000595D1E9068"] = 4
SEM_MARKS_DEFAULT["0xF130005AC51E9166"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E943E"] = 7
SEM_MARKS_DEFAULT["0xF130005B4E1E90DF"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E9441"] = 4
SEM_MARKS_DEFAULT["0xF1300059AB1E9452"] = 7
SEM_MARKS_DEFAULT["0xF130005B681E956F"] = 7
SEM_MARKS_DEFAULT["0xF1300059EA1E910C"] = 7
SEM_MARKS_DEFAULT["0xF1300059EA1E9138"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E942C"] = 6
SEM_MARKS_DEFAULT["0xF13000593F1E90FF"] = 4
SEM_MARKS_DEFAULT["0xF13000595B1E905D"] = 6
SEM_MARKS_DEFAULT["0xF130005B6A1E956C"] = 8
SEM_MARKS_DEFAULT["0xF1300059A11E911B"] = 8
SEM_MARKS_DEFAULT["0xF1300059EA1E910B"] = 8
SEM_MARKS_DEFAULT["0xF1300059AA1E90AB"] = 8
SEM_MARKS_DEFAULT["0xF13000593D1E9102"] = 8
SEM_MARKS_DEFAULT["0xF130005B621E9556"] = 8
SEM_MARKS_DEFAULT["0xF1300059F41E9085"] = 8
SEM_MARKS_DEFAULT["0xF13000593F1E90FE"] = 6
SEM_MARKS_DEFAULT["0xF13000593F1E9103"] = 4
SEM_MARKS_DEFAULT["0xF130005AB61E924B"] = 8
SEM_MARKS_DEFAULT["0xF130005AC41E922A"] = 4
SEM_MARKS_DEFAULT["0xF1300059EA1E9131"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9295"] = 7
SEM_MARKS_DEFAULT["0xF130005AC51E91BA"] = 8
SEM_MARKS_DEFAULT["0xF130005967009E4F"] = 8
SEM_MARKS_DEFAULT["0xF1300059B41E9470"] = 8
SEM_MARKS_DEFAULT["0xF130005B4E1E90D9"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9447"] = 8
SEM_MARKS_DEFAULT["0xF13000595D1E9057"] = 4
SEM_MARKS_DEFAULT["0xF1300059591E9060"] = 4
SEM_MARKS_DEFAULT["0xF13000595F1E9135"] = 6
SEM_MARKS_DEFAULT["0xF130005B681E9567"] = 7
SEM_MARKS_DEFAULT["0xF13000595E1E9065"] = 8
SEM_MARKS_DEFAULT["0xF130005AC71E923C"] = 7
SEM_MARKS_DEFAULT["0xF1300059601E9109"] = 8
SEM_MARKS_DEFAULT["0xF130005AC41E91BB"] = 6
SEM_MARKS_DEFAULT["0xF130005A841E9151"] = 6
SEM_MARKS_DEFAULT["0xF130005A9C1E915C"] = 8
SEM_MARKS_DEFAULT["0xF130005B621E955E"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E9449"] = 6
SEM_MARKS_DEFAULT["0xF130005B291E90D6"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E9464"] = 7
SEM_MARKS_DEFAULT["0xF130005AC51E9165"] = 8
SEM_MARKS_DEFAULT["0xF1300059641E9066"] = 8
SEM_MARKS_DEFAULT["0xF130005AC31E922B"] = 2
SEM_MARKS_DEFAULT["0xF1300059AB1E945A"] = 4
SEM_MARKS_DEFAULT["0xF130005B6B1E9570"] = 2
SEM_MARKS_DEFAULT["0xF1300059AF1E9299"] = 5
SEM_MARKS_DEFAULT["0xF1300059AB1E9468"] = 6
SEM_MARKS_DEFAULT["0xF1300059A11E914B"] = 8
SEM_MARKS_DEFAULT["0xF130005B6B1E9565"] = 5
SEM_MARKS_DEFAULT["0xF13000593C1E9105"] = 7
SEM_MARKS_DEFAULT["0xF1300059471E90F1"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E9426"] = 8
SEM_MARKS_DEFAULT["0xF1300059AC1E92A4"] = 7
SEM_MARKS_DEFAULT["0xF130005AC51E91BD"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9297"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E943F"] = 6
SEM_MARKS_DEFAULT["0xF1300059AC1E941E"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E946D"] = 5
SEM_MARKS_DEFAULT["0xF13000595F1E9117"] = 6
SEM_MARKS_DEFAULT["0xF1300059551E90D7"] = 5
SEM_MARKS_DEFAULT["0xF1300059451E90F3"] = 6
SEM_MARKS_DEFAULT["0xF130005B651E956E"] = 6
SEM_MARKS_DEFAULT["0xF1300059591E9061"] = 6
SEM_MARKS_DEFAULT["0xF1300059601E911E"] = 6
SEM_MARKS_DEFAULT["0xF130005B6A1E9568"] = 8
SEM_MARKS_DEFAULT["0xF1300059411E9661"] = 8
SEM_MARKS_DEFAULT["0xF130005A841E9150"] = 8
SEM_MARKS_DEFAULT["0xF130005B6B1E9566"] = 2
SEM_MARKS_DEFAULT["0xF1300059651E9062"] = 8
SEM_MARKS_DEFAULT["0xF130005A9C1E9230"] = 8
SEM_MARKS_DEFAULT["0xF13000593D1E90FD"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E9296"] = 4
SEM_MARKS_DEFAULT["0xF1300059AB1E942E"] = 2
SEM_MARKS_DEFAULT["0xF1300059F41E90A6"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E929A"] = 7
SEM_MARKS_DEFAULT["0xF13000593E1E90FC"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9450"] = 4
SEM_MARKS_DEFAULT["0xF13000595B1E905C"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E942B"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E92A2"] = 6
SEM_MARKS_DEFAULT["0xF1300059A600CE1B"] = 1
SEM_MARKS_DEFAULT["0xF1300059B21E946F"] = 7
SEM_MARKS_DEFAULT["0xF1300059A91E914A"] = 5
SEM_MARKS_DEFAULT["0xF1300059AC1E9471"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E942A"] = 8
SEM_MARKS_DEFAULT["0xF1300059B41E92A5"] = 8
SEM_MARKS_DEFAULT["0xF1300059AF1E9298"] = 9
SEM_MARKS_DEFAULT["0xF1300059601E9116"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E93A9"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E929B"] = 8
SEM_MARKS_DEFAULT["0xF13000593C1E90EC"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E9436"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9294"] = 1
SEM_MARKS_DEFAULT["0xF1300059451E90D5"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E941C"] = 7
SEM_MARKS_DEFAULT["0xF13000593C1E90FB"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E944F"] = 5
SEM_MARKS_DEFAULT["0xF130005A841E914F"] = 7
SEM_MARKS_DEFAULT["0xF130005B6B1E956D"] = 5
SEM_MARKS_DEFAULT["0xF1300059601E9136"] = 8
SEM_MARKS_DEFAULT["0xF1300059621E914E"] = 2
SEM_MARKS_DEFAULT["0xF130005B7D2DC747"] = 8
SEM_MARKS_DEFAULT["0xF1300059B51E9434"] = 1
SEM_MARKS_DEFAULT["0xF13000599B1E941D"] = 8
SEM_MARKS_DEFAULT["0xF130005A9C1E923E"] = 8
SEM_MARKS_DEFAULT["0xF130005B651E956A"] = 6
SEM_MARKS_DEFAULT["0xF130005B291E90D3"] = 4
SEM_MARKS_DEFAULT["0xF13000593D1E9104"] = 8
SEM_MARKS_DEFAULT["0xF130005B4E1E90D8"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E93A8"] = 6
SEM_MARKS_DEFAULT["0xF1300059B21E9445"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E93A7"] = 4
SEM_MARKS_DEFAULT["0xF1300059B51E93AB"] = 1
SEM_MARKS_DEFAULT["0xF1300059631E9074"] = 7
SEM_MARKS_DEFAULT["0xF1300059651E905F"] = 7
SEM_MARKS_DEFAULT["0xF1300059A11E9114"] = 7
SEM_MARKS_DEFAULT["0xF130005AC41E9167"] = 6
SEM_MARKS_DEFAULT["0xF1300059631E9073"] = 8
SEM_MARKS_DEFAULT["0xF130005AC41E9169"] = 4
SEM_MARKS_DEFAULT["0xF1300059AB1E9425"] = 7
SEM_MARKS_DEFAULT["0xF13000595D1E9058"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E9429"] = 2
SEM_MARKS_DEFAULT["0xF1300059A700CE1C"] = 4
SEM_MARKS_DEFAULT["0xF13000595F1E9134"] = 4
SEM_MARKS_DEFAULT["0xF1300059AB1E9427"] = 6
SEM_MARKS_DEFAULT["0xF1300059B51E92A6"] = 2
SEM_MARKS_DEFAULT["0xF1300059641E9056"] = 8
SEM_MARKS_DEFAULT["0xF13000595A1E9063"] = 1
SEM_MARKS_DEFAULT["0xF1300059AB1E93A6"] = 2
SEM_MARKS_DEFAULT["0xF13000595A1E905E"] = 5
SEM_MARKS_DEFAULT["0xF1300059631E9076"] = 7
SEM_MARKS_DEFAULT["0xF1300059B41E9442"] = 8
SEM_MARKS_DEFAULT["0xF130005B621E9473"] = 8
SEM_MARKS_DEFAULT["0xF130005B4E1E90DE"] = 7
SEM_MARKS_DEFAULT["0xF1300059AD1E9444"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E943D"] = 8
SEM_MARKS_DEFAULT["0xF13000595D1E9067"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E9451"] = 8
SEM_MARKS_DEFAULT["0xF1300059631E904B"] = 7
SEM_MARKS_DEFAULT["0xF1300059AA1E90AC"] = 7
SEM_MARKS_DEFAULT["0xF1300059AC1E9443"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9453"] = 6
SEM_MARKS_DEFAULT["0xF1300059B41E941F"] = 8
SEM_MARKS_DEFAULT["0xF13000593D1E90F5"] = 8
SEM_MARKS_DEFAULT["0xF13000593E1E90F9"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E9437"] = 8
SEM_MARKS_DEFAULT["0xF130005B651E956B"] = 4
SEM_MARKS_DEFAULT["0xF1300059AB1E9463"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E9448"] = 7
SEM_MARKS_DEFAULT["0xF1300059AD1E946E"] = 8
SEM_MARKS_DEFAULT["0xF130005B651E9569"] = 4
SEM_MARKS_DEFAULT["0xF1300059AA1E90AA"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E93A5"] = 8
SEM_MARKS_DEFAULT["0xF1300059621E914D"] = 1
SEM_MARKS_DEFAULT["0xF1300059AB1E9428"] = 4
SEM_MARKS_DEFAULT["0xF130005B621E9557"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E9462"] = 4
SEM_MARKS_DEFAULT["0xF1300059AB1E9466"] = 4
SEM_MARKS_DEFAULT["0xF1300059AB1E9461"] = 5
SEM_MARKS_DEFAULT["0xF13000593D1E90EB"] = 8

SEM_MARKS_DEFAULT["0xF1300059B01E909E"] = 7
SEM_MARKS_DEFAULT["0xF130004E501E8C15"] = 4
SEM_MARKS_DEFAULT["0xF130005AC31E9168"] = 5
SEM_MARKS_DEFAULT["0xF130004E54003109"] = 4
SEM_MARKS_DEFAULT["0xF1300059AD1E9446"] = 8
SEM_MARKS_DEFAULT["0xF1300052E4016E91"] = 7
SEM_MARKS_DEFAULT["0xF130005C2D1EFB22"] = 4
SEM_MARKS_DEFAULT["0xF130004E4A003115"] = 7
SEM_MARKS_DEFAULT["0xF130004E51031011"] = 8
SEM_MARKS_DEFAULT["0xF130005CDE1EFB76"] = 8
SEM_MARKS_DEFAULT["0xF1300059B41E9470"] = 8
SEM_MARKS_DEFAULT["0xF13000595B1E905C"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9297"] = 6
SEM_MARKS_DEFAULT["0xF130004E4A003113"] = 8
SEM_MARKS_DEFAULT["0xF1300052E4016E7E"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9296"] = 4
SEM_MARKS_DEFAULT["0xF13000595E1E905B"] = 8
SEM_MARKS_DEFAULT["0xF1300059A11E914C"] = 7
SEM_MARKS_DEFAULT["0xF1300052ED016E59"] = 8
SEM_MARKS_DEFAULT["0xF130004E51031010"] = 7
SEM_MARKS_DEFAULT["0xF130004E431E8BFE"] = 6
SEM_MARKS_DEFAULT["0xF13000552E2DC744"] = 4
SEM_MARKS_DEFAULT["0xF130005AC31E922D"] = 5
SEM_MARKS_DEFAULT["0xF1300053331E8BA7"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E9436"] = 7
SEM_MARKS_DEFAULT["0xF130005AC51E9165"] = 8
SEM_MARKS_DEFAULT["0xF1300052E91E8BC1"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E9469"] = 7
SEM_MARKS_DEFAULT["0xF130005B621E9557"] = 8
SEM_MARKS_DEFAULT["0xF130004E451E8BF0"] = 6
SEM_MARKS_DEFAULT["0xF130005C2C1EFB5D"] = 8
SEM_MARKS_DEFAULT["0xF1300053321E8BB5"] = 7
SEM_MARKS_DEFAULT["0xF130005F361EFBD0"] = 7
SEM_MARKS_DEFAULT["0xF130004E440030E3"] = 7
SEM_MARKS_DEFAULT["0xF1300052E91E8BBC"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E945A"] = 4
SEM_MARKS_DEFAULT["0xF1300059B01E909F"] = 8
SEM_MARKS_DEFAULT["0xF1300059EA1E9132"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E945C"] = 8
SEM_MARKS_DEFAULT["0xF130004E50031013"] = 6
SEM_MARKS_DEFAULT["0xF130004E40030FFE"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9447"] = 8
SEM_MARKS_DEFAULT["0xF130005F361EFBAF"] = 7
SEM_MARKS_DEFAULT["0xF130005B681E956F"] = 7
SEM_MARKS_DEFAULT["0xF130004E41031007"] = 2
SEM_MARKS_DEFAULT["0xF130004E490030AA"] = 7
SEM_MARKS_DEFAULT["0xF1300059A500CE1A"] = 6
SEM_MARKS_DEFAULT["0xF1300052E4016E7B"] = 8
SEM_MARKS_DEFAULT["0xF130005A9C1E922E"] = 2
SEM_MARKS_DEFAULT["0xF130005C2D1EFB62"] = 7
SEM_MARKS_DEFAULT["0xF130005C2D1EFB21"] = 6
SEM_MARKS_DEFAULT["0xF130005AC51E9166"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E943E"] = 7
SEM_MARKS_DEFAULT["0xF130005B4E1E90DF"] = 1
SEM_MARKS_DEFAULT["0xF130004E50031015"] = 6
SEM_MARKS_DEFAULT["0xF130004E40030FFF"] = 8
SEM_MARKS_DEFAULT["0xF130005B651E956B"] = 4
SEM_MARKS_DEFAULT["0xF1300059AB1E942C"] = 6
SEM_MARKS_DEFAULT["0xF130005C2C1EFB63"] = 2
SEM_MARKS_DEFAULT["0xF13000595B1E905D"] = 6
SEM_MARKS_DEFAULT["0xF1300052EE016E48"] = 1
SEM_MARKS_DEFAULT["0xF1300059AB1E942A"] = 8
SEM_MARKS_DEFAULT["0xF130004E521E8C03"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E941C"] = 7
SEM_MARKS_DEFAULT["0xF130005335013A6B"] = 8
SEM_MARKS_DEFAULT["0xF130005AC51E91BA"] = 8
SEM_MARKS_DEFAULT["0xF130005B4E1E90D9"] = 7
SEM_MARKS_DEFAULT["0xF1300059591E9060"] = 4
SEM_MARKS_DEFAULT["0xF1300059AF1E9298"] = 9
SEM_MARKS_DEFAULT["0xF1300052ED0143AE"] = 1
SEM_MARKS_DEFAULT["0xF1300059AC1E941E"] = 7
SEM_MARKS_DEFAULT["0xF130004E440030E9"] = 8
SEM_MARKS_DEFAULT["0xF1300052E21E8B8D"] = 1
SEM_MARKS_DEFAULT["0xF130005A9C1E915C"] = 8
SEM_MARKS_DEFAULT["0xF130005B621E955E"] = 4
SEM_MARKS_DEFAULT["0xF1300059AB1E9449"] = 6
SEM_MARKS_DEFAULT["0xF13000593D1E90FD"] = 8
SEM_MARKS_DEFAULT["0xF13000595D1E9067"] = 6
SEM_MARKS_DEFAULT["0xF1300052ED016E57"] = 2
SEM_MARKS_DEFAULT["0xF1300059B51E92A6"] = 2
SEM_MARKS_DEFAULT["0xF130005AC31E922B"] = 2
SEM_MARKS_DEFAULT["0xF1300052EE013FF9"] = 2
SEM_MARKS_DEFAULT["0xF130005C2C1EFBF2"] = 2
SEM_MARKS_DEFAULT["0xF130004E4B0030D1"] = 4
SEM_MARKS_DEFAULT["0xF130005C2D1EFC0B"] = 8
SEM_MARKS_DEFAULT["0xF130004E4F1E8C12"] = 1
SEM_MARKS_DEFAULT["0xF130004E44003086"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E9426"] = 8
SEM_MARKS_DEFAULT["0xF13000593C1E9105"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E946D"] = 5
SEM_MARKS_DEFAULT["0xF1300052E91E8BBB"] = 8
SEM_MARKS_DEFAULT["0xF1300052E91E8BBE"] = 2
SEM_MARKS_DEFAULT["0xF1300059591E9061"] = 6
SEM_MARKS_DEFAULT["0xF1300059411E9661"] = 8
SEM_MARKS_DEFAULT["0xF130005A841E9150"] = 8
SEM_MARKS_DEFAULT["0xF130005B6B1E9566"] = 2
SEM_MARKS_DEFAULT["0xF1300059651E9062"] = 8
SEM_MARKS_DEFAULT["0xF130005B6A1E9568"] = 8
SEM_MARKS_DEFAULT["0xF130004E4B0030ED"] = 4
SEM_MARKS_DEFAULT["0xF1300059F41E90A6"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E929A"] = 7
SEM_MARKS_DEFAULT["0xF13000593E1E90FC"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9450"] = 4
SEM_MARKS_DEFAULT["0xF1300052E5016E99"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E9425"] = 7
SEM_MARKS_DEFAULT["0xF130004E471E8C1E"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E93A6"] = 2
SEM_MARKS_DEFAULT["0xF1300059B41E92A5"] = 8
SEM_MARKS_DEFAULT["0xF130005B291E90D6"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E93A9"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E929B"] = 8
SEM_MARKS_DEFAULT["0xF1300059B41E941B"] = 8
SEM_MARKS_DEFAULT["0xF130005335013CA8"] = 7
SEM_MARKS_DEFAULT["0xF1300059631E905A"] = 7
SEM_MARKS_DEFAULT["0xF130004E5203101C"] = 8
SEM_MARKS_DEFAULT["0xF130005C2C1EFBAB"] = 2
SEM_MARKS_DEFAULT["0xF13000593C1E90FB"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E944F"] = 5
SEM_MARKS_DEFAULT["0xF130005C221EFBAC"] = 8
SEM_MARKS_DEFAULT["0xF130004E54003110"] = 6
SEM_MARKS_DEFAULT["0xF130004E4900310F"] = 7
SEM_MARKS_DEFAULT["0xF1300059B51E93AB"] = 1
SEM_MARKS_DEFAULT["0xF130005B7D2DC747"] = 8
SEM_MARKS_DEFAULT["0xF130004E4A003112"] = 8
SEM_MARKS_DEFAULT["0xF130005335016E7C"] = 7
SEM_MARKS_DEFAULT["0xF130005E011EFBF0"] = 8
SEM_MARKS_DEFAULT["0xF130004E4F031019"] = 2
SEM_MARKS_DEFAULT["0xF130004E54003107"] = 4
SEM_MARKS_DEFAULT["0xF130004E54003106"] = 6
SEM_MARKS_DEFAULT["0xF130005B4E1E90D8"] = 8
SEM_MARKS_DEFAULT["0xF13000535B01440E"] = 7
SEM_MARKS_DEFAULT["0xF1300059B21E9445"] = 7
SEM_MARKS_DEFAULT["0xF1300052E5016E9D"] = 8
SEM_MARKS_DEFAULT["0xF130005DFB1EFBB8"] = 2
SEM_MARKS_DEFAULT["0xF130004E541E8C1F"] = 4
SEM_MARKS_DEFAULT["0xF1300059651E905F"] = 7
SEM_MARKS_DEFAULT["0xF1300059A11E9114"] = 7
SEM_MARKS_DEFAULT["0xF130005AC41E9167"] = 6
SEM_MARKS_DEFAULT["0xF1300059631E9073"] = 8
SEM_MARKS_DEFAULT["0xF1300052E21E8B8E"] = 1
SEM_MARKS_DEFAULT["0xF130005C2D1EFBA8"] = 7
SEM_MARKS_DEFAULT["0xF130004E5400310D"] = 6
SEM_MARKS_DEFAULT["0xF1300059631E9059"] = 8
SEM_MARKS_DEFAULT["0xF1300053331E8BB6"] = 4
SEM_MARKS_DEFAULT["0xF1300059601E9116"] = 8
SEM_MARKS_DEFAULT["0xF130004E5400310C"] = 4
SEM_MARKS_DEFAULT["0xF130004E4900310A"] = 7
SEM_MARKS_DEFAULT["0xF1300059641E9056"] = 8
SEM_MARKS_DEFAULT["0xF130004E541E8C1C"] = 6
SEM_MARKS_DEFAULT["0xF130004E4A1E8C1D"] = 8
SEM_MARKS_DEFAULT["0xF130004E4A003116"] = 8
SEM_MARKS_DEFAULT["0xF130004E490030AE"] = 8
SEM_MARKS_DEFAULT["0xF130004E49003100"] = 7
SEM_MARKS_DEFAULT["0xF130005B621E9473"] = 8
SEM_MARKS_DEFAULT["0xF130004E490030FF"] = 8
SEM_MARKS_DEFAULT["0xF130004E501E8BFC"] = 4
SEM_MARKS_DEFAULT["0xF130005E731EFB6B"] = 8
SEM_MARKS_DEFAULT["0xF130004E431E8BFA"] = 6
SEM_MARKS_DEFAULT["0xF130004E521E8BFB"] = 8
SEM_MARKS_DEFAULT["0xF1300059631E904B"] = 7
SEM_MARKS_DEFAULT["0xF130005C2C1EFBAD"] = 7
SEM_MARKS_DEFAULT["0xF1300059AC1E9443"] = 7
SEM_MARKS_DEFAULT["0xF130004E521E8BFD"] = 8
SEM_MARKS_DEFAULT["0xF130004E4400307F"] = 8
SEM_MARKS_DEFAULT["0xF13000593D1E90F5"] = 8
SEM_MARKS_DEFAULT["0xF130004E501E8C02"] = 6
SEM_MARKS_DEFAULT["0xF130004E5003101A"] = 4
SEM_MARKS_DEFAULT["0xF130004E47003092"] = 6
SEM_MARKS_DEFAULT["0xF130005E731EFB75"] = 6
SEM_MARKS_DEFAULT["0xF130004E5003101B"] = 6
SEM_MARKS_DEFAULT["0xF130005C2D1EFBA7"] = 8
SEM_MARKS_DEFAULT["0xF130005B651E9569"] = 4
SEM_MARKS_DEFAULT["0xF130004E501E8C14"] = 6
SEM_MARKS_DEFAULT["0xF130004E4F1E8C13"] = 2
SEM_MARKS_DEFAULT["0xF130004E511E8C11"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9428"] = 4
SEM_MARKS_DEFAULT["0xF130005E011EFE39"] = 2
SEM_MARKS_DEFAULT["0xF1300059AB1E942E"] = 2
SEM_MARKS_DEFAULT["0xF130004E50031014"] = 4
SEM_MARKS_DEFAULT["0xF1300059AB1E9461"] = 5
SEM_MARKS_DEFAULT["0xF130004E490030B2"] = 8
SEM_MARKS_DEFAULT["0xF130005567014408"] = 3
SEM_MARKS_DEFAULT["0xF130004E4B0030DF"] = 4
SEM_MARKS_DEFAULT["0xF1300059AB1E9453"] = 6
SEM_MARKS_DEFAULT["0xF1300059A11E9113"] = 8
SEM_MARKS_DEFAULT["0xF130004E51031016"] = 7
SEM_MARKS_DEFAULT["0xF1300052E91E8BB8"] = 8
SEM_MARKS_DEFAULT["0xF1300059411E965F"] = 7
SEM_MARKS_DEFAULT["0xF130004E51031017"] = 8
SEM_MARKS_DEFAULT["0xF130004E470030BB"] = 8
SEM_MARKS_DEFAULT["0xF130004E50031012"] = 4
SEM_MARKS_DEFAULT["0xF130005FD21EFC09"] = 8
SEM_MARKS_DEFAULT["0xF13000552E2DC743"] = 7
SEM_MARKS_DEFAULT["0xF130004E4F03100E"] = 2
SEM_MARKS_DEFAULT["0xF130004E490030B4"] = 7
SEM_MARKS_DEFAULT["0xF130004E4B0030E7"] = 6
SEM_MARKS_DEFAULT["0xF130004E4B0030D8"] = 6
SEM_MARKS_DEFAULT["0xF1300053321E8BA3"] = 2
SEM_MARKS_DEFAULT["0xF130004E3F031009"] = 6
SEM_MARKS_DEFAULT["0xF130004E4B0030CB"] = 6
SEM_MARKS_DEFAULT["0xF13000595F1E910A"] = 4
SEM_MARKS_DEFAULT["0xF130004E440030EE"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9429"] = 2
SEM_MARKS_DEFAULT["0xF130004E440030D9"] = 8
SEM_MARKS_DEFAULT["0xF1300052ED01440F"] = 2
SEM_MARKS_DEFAULT["0xF1300053321E8BB4"] = 8
SEM_MARKS_DEFAULT["0xF13000593C1E90FA"] = 4
SEM_MARKS_DEFAULT["0xF1300059551E90F2"] = 7
SEM_MARKS_DEFAULT["0xF130005B621E9556"] = 7
SEM_MARKS_DEFAULT["0xF130004E440030CE"] = 7
SEM_MARKS_DEFAULT["0xF1300059631E904A"] = 8
SEM_MARKS_DEFAULT["0xF130004E4400309B"] = 7
SEM_MARKS_DEFAULT["0xF130005C221EFB33"] = 8
SEM_MARKS_DEFAULT["0xF13000593F1E90FE"] = 6
SEM_MARKS_DEFAULT["0xF13000593D1E90EB"] = 8
SEM_MARKS_DEFAULT["0xF1300052E91E8BBA"] = 2
SEM_MARKS_DEFAULT["0xF130004E44003084"] = 7
SEM_MARKS_DEFAULT["0xF13000593F1E9101"] = 7
SEM_MARKS_DEFAULT["0xF130005A091E9130"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E92A1"] = 4
SEM_MARKS_DEFAULT["0xF130005E731EFBB6"] = 4
SEM_MARKS_DEFAULT["0xF1300059AB1E9440"] = 2
SEM_MARKS_DEFAULT["0xF130005AB61E924A"] = 8
SEM_MARKS_DEFAULT["0xF130004E3F0030FE"] = 6
SEM_MARKS_DEFAULT["0xF130004E4D1E8C1A"] = 8
SEM_MARKS_DEFAULT["0xF1300052E21E8B8A"] = 1
SEM_MARKS_DEFAULT["0xF130004E3F0030FB"] = 4
SEM_MARKS_DEFAULT["0xF130005FE51EFBB2"] = 2
SEM_MARKS_DEFAULT["0xF13000593E1E90ED"] = 7
SEM_MARKS_DEFAULT["0xF130004E3F0030F9"] = 6
SEM_MARKS_DEFAULT["0xF1300059EA1E910B"] = 8
SEM_MARKS_DEFAULT["0xF130005C2C1EFB34"] = 2
SEM_MARKS_DEFAULT["0xF1300052E4016E8A"] = 7
SEM_MARKS_DEFAULT["0xF130004E3F0030FD"] = 4
SEM_MARKS_DEFAULT["0xF130004E431E8C0F"] = 4
SEM_MARKS_DEFAULT["0xF1300052E4016E83"] = 7
SEM_MARKS_DEFAULT["0xF130004E44003085"] = 7
SEM_MARKS_DEFAULT["0xF130004E3F0030B5"] = 4
SEM_MARKS_DEFAULT["0xF13000595E1E9064"] = 7
SEM_MARKS_DEFAULT["0xF130005AC41E91BB"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E9448"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9467"] = 8
SEM_MARKS_DEFAULT["0xF130004E4E0030B3"] = 8
SEM_MARKS_DEFAULT["0xF130004E47003091"] = 4
SEM_MARKS_DEFAULT["0xF13000593C1E90F7"] = 4
SEM_MARKS_DEFAULT["0xF130004E4F031018"] = 1
SEM_MARKS_DEFAULT["0xF130004E480030AD"] = 7
SEM_MARKS_DEFAULT["0xF13000595F1E9112"] = 6
SEM_MARKS_DEFAULT["0xF130005F361EFBAE"] = 8
SEM_MARKS_DEFAULT["0xF130004E451E8BF1"] = 7
SEM_MARKS_DEFAULT["0xF130005C2C1EFBC3"] = 2
SEM_MARKS_DEFAULT["0xF130005A841E9152"] = 4
SEM_MARKS_DEFAULT["0xF130005B2B1E90D4"] = 8
SEM_MARKS_DEFAULT["0xF1300059A11E914B"] = 8
SEM_MARKS_DEFAULT["0xF130005AC31E916A"] = 2
SEM_MARKS_DEFAULT["0xF130004E4400309C"] = 6
SEM_MARKS_DEFAULT["0xF130004E430030A8"] = 8
SEM_MARKS_DEFAULT["0xF130004E3F031008"] = 4
SEM_MARKS_DEFAULT["0xF130005B6A1E956C"] = 8
SEM_MARKS_DEFAULT["0xF130005FD21EFBC4"] = 7
SEM_MARKS_DEFAULT["0xF1300059A800CE1D"] = 7
SEM_MARKS_DEFAULT["0xF130005A9C1E923D"] = 6
SEM_MARKS_DEFAULT["0xF13000595D1E9057"] = 4
SEM_MARKS_DEFAULT["0xF130004E4203100D"] = 2
SEM_MARKS_DEFAULT["0xF1300059AB1E9466"] = 4
SEM_MARKS_DEFAULT["0xF130004E42031006"] = 1
SEM_MARKS_DEFAULT["0xF1300059AD1E946E"] = 8
SEM_MARKS_DEFAULT["0xF130005B651E956E"] = 6
SEM_MARKS_DEFAULT["0xF130005B7D2DC746"] = 7
SEM_MARKS_DEFAULT["0xF130004E3F031003"] = 4
SEM_MARKS_DEFAULT["0xF130004E3F031002"] = 6
SEM_MARKS_DEFAULT["0xF1300059B41E941F"] = 8
SEM_MARKS_DEFAULT["0xF130004E3F030FFD"] = 4
SEM_MARKS_DEFAULT["0xF13000595D1E9068"] = 4
SEM_MARKS_DEFAULT["0xF130004E3F030FFC"] = 6
SEM_MARKS_DEFAULT["0xF130005DFB1EFBB5"] = 8
SEM_MARKS_DEFAULT["0xF130004E42031000"] = 1
SEM_MARKS_DEFAULT["0xF130004E41031001"] = 2
SEM_MARKS_DEFAULT["0xF1300059AB1E9452"] = 7
SEM_MARKS_DEFAULT["0xF130005A841E914F"] = 7
SEM_MARKS_DEFAULT["0xF130005FE51EFE3C"] = 7
SEM_MARKS_DEFAULT["0xF1300059AB1E9463"] = 6
SEM_MARKS_DEFAULT["0xF130005C1D1EFBB9"] = 8
SEM_MARKS_DEFAULT["0xF13000593F1E90FF"] = 4
SEM_MARKS_DEFAULT["0xF1300052ED014350"] = 8
SEM_MARKS_DEFAULT["0xF130005C2D1EFBF3"] = 7
SEM_MARKS_DEFAULT["0xF1300059AA1E90A9"] = 4
SEM_MARKS_DEFAULT["0xF130005E011EFB41"] = 7
SEM_MARKS_DEFAULT["0xF130004E4A003111"] = 8
SEM_MARKS_DEFAULT["0xF13000593D1E9102"] = 8
SEM_MARKS_DEFAULT["0xF130005C2C1EFBA3"] = 1
SEM_MARKS_DEFAULT["0xF1300059F41E9085"] = 8
SEM_MARKS_DEFAULT["0xF130004E451E8BF2"] = 8
SEM_MARKS_DEFAULT["0xF130005DFB1EFB1B"] = 2
SEM_MARKS_DEFAULT["0xF130005AB61E924B"] = 8
SEM_MARKS_DEFAULT["0xF130005AC41E922A"] = 4
SEM_MARKS_DEFAULT["0xF130005DFB1EFB1D"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E9295"] = 7
SEM_MARKS_DEFAULT["0xF1300059EA1E9131"] = 7
SEM_MARKS_DEFAULT["0xF130005967009E4F"] = 8
SEM_MARKS_DEFAULT["0xF130004E4003100B"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E943F"] = 6
SEM_MARKS_DEFAULT["0xF130005FD21EFB43"] = 8
SEM_MARKS_DEFAULT["0xF130005DFB1EFB81"] = 2
SEM_MARKS_DEFAULT["0xF130004E511E8C10"] = 8
SEM_MARKS_DEFAULT["0xF13000595F1E9135"] = 6
SEM_MARKS_DEFAULT["0xF130005B681E9567"] = 7
SEM_MARKS_DEFAULT["0xF130004E4F03100F"] = 1
SEM_MARKS_DEFAULT["0xF130005DFB1EFBB4"] = 8
SEM_MARKS_DEFAULT["0xF130005C2C1EFBFC"] = 2
SEM_MARKS_DEFAULT["0xF130005C2D1EFB2C"] = 7
SEM_MARKS_DEFAULT["0xF130004E4D1E8C19"] = 8
SEM_MARKS_DEFAULT["0xF1300059631E9076"] = 2
SEM_MARKS_DEFAULT["0xF130004E48003108"] = 7
SEM_MARKS_DEFAULT["0xF13000593E1E90F9"] = 6
SEM_MARKS_DEFAULT["0xF130004E450030BC"] = 4
SEM_MARKS_DEFAULT["0xF130005CDE1EFB32"] = 8
SEM_MARKS_DEFAULT["0xF130005C2D1EFB85"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E9293"] = 8
SEM_MARKS_DEFAULT["0xF130004E501E8BFF"] = 4
SEM_MARKS_DEFAULT["0xF130005B6B1E9570"] = 2
SEM_MARKS_DEFAULT["0xF1300059AA1E90AB"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E9468"] = 6
SEM_MARKS_DEFAULT["0xF1300052EE016E52"] = 2
SEM_MARKS_DEFAULT["0xF130005B6B1E9565"] = 5
SEM_MARKS_DEFAULT["0xF130005C1D1EFBFE"] = 8
SEM_MARKS_DEFAULT["0xF1300059471E90F1"] = 8
SEM_MARKS_DEFAULT["0xF1300052E4016E90"] = 8
SEM_MARKS_DEFAULT["0xF1300059AC1E92A4"] = 7
SEM_MARKS_DEFAULT["0xF130005AC51E91BD"] = 7
SEM_MARKS_DEFAULT["0xF130004E40031004"] = 7
SEM_MARKS_DEFAULT["0xF13000552E2DC742"] = 8
SEM_MARKS_DEFAULT["0xF1300052EE016E63"] = 1
SEM_MARKS_DEFAULT["0xF1300052ED016E4E"] = 8
SEM_MARKS_DEFAULT["0xF130005E731EFBFD"] = 7
SEM_MARKS_DEFAULT["0xF1300059551E90D7"] = 5
SEM_MARKS_DEFAULT["0xF1300059451E90F3"] = 6
SEM_MARKS_DEFAULT["0xF1300052EE016E49"] = 2
SEM_MARKS_DEFAULT["0xF130004E4103100C"] = 1
SEM_MARKS_DEFAULT["0xF1300059601E911E"] = 6
SEM_MARKS_DEFAULT["0xF1300052ED016E5A"] = 2
SEM_MARKS_DEFAULT["0xF1300059B41E9442"] = 8
SEM_MARKS_DEFAULT["0xF13000535B016E84"] = 7
SEM_MARKS_DEFAULT["0xF1300052ED016E55"] = 8
SEM_MARKS_DEFAULT["0xF13000593C1E9100"] = 6
SEM_MARKS_DEFAULT["0xF130005A9C1E9230"] = 8
SEM_MARKS_DEFAULT["0xF1300052ED0143A5"] = 8
SEM_MARKS_DEFAULT["0xF13000593D1E9104"] = 8
SEM_MARKS_DEFAULT["0xF1300059AD1E9444"] = 8
SEM_MARKS_DEFAULT["0xF1300053331E8BA5"] = 6
SEM_MARKS_DEFAULT["0xF1300053321E8BA2"] = 2
SEM_MARKS_DEFAULT["0xF1300059631E9072"] = 8
SEM_MARKS_DEFAULT["0xF130005B4E1E90DE"] = 2
SEM_MARKS_DEFAULT["0xF1300059AB1E942B"] = 7
SEM_MARKS_DEFAULT["0xF1300052ED013C65"] = 2
SEM_MARKS_DEFAULT["0xF1300059AB1E92A2"] = 6
SEM_MARKS_DEFAULT["0xF1300059B21E946F"] = 7
SEM_MARKS_DEFAULT["0xF13000593E1E90F8"] = 7
SEM_MARKS_DEFAULT["0xF13000595A1E9063"] = 1
SEM_MARKS_DEFAULT["0xF130005C2C1EFB0D"] = 2
SEM_MARKS_DEFAULT["0xF1300059A11E911D"] = 7
SEM_MARKS_DEFAULT["0xF130005C2D1EFAFF"] = 7
SEM_MARKS_DEFAULT["0xF1300052E91E8BBD"] = 8
SEM_MARKS_DEFAULT["0xF1300052E5016E98"] = 8
SEM_MARKS_DEFAULT["0xF1300052E91E8BB9"] = 2
SEM_MARKS_DEFAULT["0xF13000593C1E90EC"] = 6
SEM_MARKS_DEFAULT["0xF1300053331E8BB7"] = 6
SEM_MARKS_DEFAULT["0xF1300059AB1E9294"] = 1
SEM_MARKS_DEFAULT["0xF1300059551E90D2"] = 1
SEM_MARKS_DEFAULT["0xF13000595F1E9118"] = 4
SEM_MARKS_DEFAULT["0xF1300059601E9133"] = 7
SEM_MARKS_DEFAULT["0xF13000595D1E9058"] = 6
SEM_MARKS_DEFAULT["0xF1300052E4016E81"] = 8
SEM_MARKS_DEFAULT["0xF130005B6B1E956D"] = 5
SEM_MARKS_DEFAULT["0xF1300052E4016E7A"] = 8
SEM_MARKS_DEFAULT["0xF1300059621E914E"] = 2
SEM_MARKS_DEFAULT["0xF130005A841E9151"] = 6
SEM_MARKS_DEFAULT["0xF1300059B51E9434"] = 1
SEM_MARKS_DEFAULT["0xF130005AC71E923B"] = 7
SEM_MARKS_DEFAULT["0xF1300052E4016E80"] = 7
SEM_MARKS_DEFAULT["0xF130005F361EFBD1"] = 8
SEM_MARKS_DEFAULT["0xF1300052E2016E74"] = 1
SEM_MARKS_DEFAULT["0xF130005B651E956A"] = 6
SEM_MARKS_DEFAULT["0xF1300059601E9107"] = 7
SEM_MARKS_DEFAULT["0xF1300052E2016E75"] = 1
SEM_MARKS_DEFAULT["0xF1300059AB1E93A8"] = 6
SEM_MARKS_DEFAULT["0xF1300053331E8BA6"] = 4
SEM_MARKS_DEFAULT["0xF1300059631E9074"] = 7
SEM_MARKS_DEFAULT["0xF130004E40031005"] = 8
SEM_MARKS_DEFAULT["0xF13000535B016E9A"] = 7
SEM_MARKS_DEFAULT["0xF1300059EA1E9137"] = 8
SEM_MARKS_DEFAULT["0xF130005C2D1EFBF1"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E9441"] = 4
SEM_MARKS_DEFAULT["0xF1300059EA1E910C"] = 7
SEM_MARKS_DEFAULT["0xF1300059EA1E9138"] = 7
SEM_MARKS_DEFAULT["0xF130004E4003100A"] = 7
SEM_MARKS_DEFAULT["0xF1300059A11E911B"] = 8
SEM_MARKS_DEFAULT["0xF130005E731EFBBF"] = 7
SEM_MARKS_DEFAULT["0xF130004E440030CD"] = 8
SEM_MARKS_DEFAULT["0xF1300059601E9136"] = 8
SEM_MARKS_DEFAULT["0xF130005567016E54"] = 3
SEM_MARKS_DEFAULT["0xF13000595E1E9065"] = 8
SEM_MARKS_DEFAULT["0xF130005335016EB5"] = 8
SEM_MARKS_DEFAULT["0xF1300053331E8BA4"] = 4
SEM_MARKS_DEFAULT["0xF130005AC71E923C"] = 7
SEM_MARKS_DEFAULT["0xF1300059601E9109"] = 8
SEM_MARKS_DEFAULT["0xF130004E3F0030B6"] = 6
SEM_MARKS_DEFAULT["0xF1300059AC1E941A"] = 7
SEM_MARKS_DEFAULT["0xF1300052E4016E86"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E9464"] = 7
SEM_MARKS_DEFAULT["0xF1300059641E9066"] = 8
SEM_MARKS_DEFAULT["0xF1300059AF1E9299"] = 5
SEM_MARKS_DEFAULT["0xF13000595F1E9117"] = 6
SEM_MARKS_DEFAULT["0xF1300059A600CE1B"] = 1
SEM_MARKS_DEFAULT["0xF1300059A91E914A"] = 5
SEM_MARKS_DEFAULT["0xF1300059AC1E9471"] = 7
SEM_MARKS_DEFAULT["0xF13000593F1E9103"] = 4
SEM_MARKS_DEFAULT["0xF130005A9C1E923E"] = 4
SEM_MARKS_DEFAULT["0xF130005B291E90D3"] = 4
SEM_MARKS_DEFAULT["0xF1300052ED016E56"] = 8
SEM_MARKS_DEFAULT["0xF1300052ED016E51"] = 8
SEM_MARKS_DEFAULT["0xF1300059AB1E9451"] = 8

-- 1 = Yellow 4-point Star
-- 2 = Orange Circle
-- 3 = Purple Diamond
-- 4 = Green Triangle
-- 5 = White Crescent Moon
-- 6 = Blue Square
-- 7 = Red "X" Cross
-- 8 = White Skull


function SEM_SlashCommandHandler(msg)

    local a, b, command = string.find( msg, "(%w+)" );

    if( command == nil ) then
        return;
    else
        command = string.lower( msg );
    end

    if (string.sub(command, 1, 2) == "rt") then
        DEFAULT_CHAT_FRAME:AddMessage("Command: rt, val: " ..string.sub(command, 3, 3))
        local guid = UnitGUID("target")

        if (guid) then
            SEM_AddNewRT(guid, tonumber(string.sub(command, 3, 3)))
        end
    end

    --if(command == "rt1") then
    --
    --elseif(command == "rt2") then
    --
    --elseif(command == "rt3") then
    --
    --elseif(command == "rt4") then
    --
    --elseif(command == "rt5") then
    --
    --elseif(command == "rt6") then
    --
    --elseif(command == "rt7") then
    --
    --elseif(command == "rt8") then
    --
    --elseif(command == "clear") then
    --
    --end
end

function SEM_AddNewRT(strGUID, iRT)
    SEM_MARKS_LOCAL[strGUID] = tonumber(iRT)
    SetRaidTarget("target", iRT);
end

function SEM_RemoveRT()

end

function SEM_OnEvent(self, event, ...)

    if (event == 'VARIABLES_LOADED') then
        SEM_OnVariablesLoaded();
    end

    -- infight check
    if (event == "PLAYER_REGEN_ENABLED") then
        isInfight = false;
    elseif (event == "PLAYER_REGEN_DISABLED") then
        isInfight = true;
    end


    if (event == "UPDATE_MOUSEOVER_UNIT") then

        local guid = UnitGUID("mouseover")
		local unitIsDead = UnitIsDead("mouseover")
		
		if(unitIsDead == nil) then
			unitIsDead = false
		end

        if (guid and not unitIsDead) then
            SEM_SetTargetMark("mouseover", guid)
        end

    end

    if (event == "PLAYER_TARGET_CHANGED") then
        local guid = UnitGUID("target")

		local unitIsDead = UnitIsDead("mouseover")
		
		if(unitIsDead == nil) then
			unitIsDead = false
		end
		
        if (guid and not unitIsDead) then
            SEM_SetTargetMark("target", guid)
        end
    end
end

function SEM_SetTargetMark(strTarget, guid)
    local mark = SEM_GetMarkForTarget(guid)

    if (mark and mark > 0) then
        SetRaidTarget(strTarget, mark);
    end
end

function SEM_GetMarkForTarget(guid)

    if(SEM_MARKS_LOCAL[guid]) then
        return SEM_MARKS_LOCAL[guid]
    end

    if(SEM_MARKS_DEFAULT[guid]) then
        return SEM_MARKS_DEFAULT[guid]
    end

    return 0
end

function SEM_OnVariablesLoaded()

    if (not SEM_MARKS_LOCAL) then
        SEM_MARKS_LOCAL = {}
    end
end

function SEM_IsInRaid()
    for i = 1, 40 do
        local name, rank, subgroup = GetRaidRosterInfo(i);
        if (name ~=  nil) then
            -- GetRaidRosterInfo will return nil if not in a raid
            return true;
        end
    end

    return false
end

function SEM__IsInGroup()
    local memberCount = 0

    for groupindex = 1,MAX_PARTY_MEMBERS do
        if (GetPartyMember(groupindex)) then
            memberCount = memberCount + 1
        end
    end

    if (memberCount > 0) then
        return true
    else
        return false
    end
end

function SEM_IsInInstance()
    local inInstance, instanceType = IsInInstance()
    if(inInstance) then
        return true
    else
        return false
    end
end