import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IItemCondition;

# *======= Variables =======*
	var millLava = <extrautils2:passivegenerator:2>;
	var millWater = <extrautils2:passivegenerator:3>;
	var millWind = <extrautils2:passivegenerator:4>;
	var millFire = <extrautils2:passivegenerator:5>;
	var millDragonEgg = <extrautils2:passivegenerator:8>;
	var amazingCore = <extrautils2:opinium:6>;
	var speedUpgrade3 = <extrautils2:ingredients:16>;
	var sunCrystal = <extrautils2:suncrystal>;
	var kleinBottle = <extrautils2:klein>;
    var creativeTank = <mekanism:machineblock2:11>.withTag({tier: 4});
	var creativeGasTank = <mekanism:gastank>.withTag({tier: 4});
    var awakendedCapacitor = <draconicevolution:draconium_capacitor:1>;
	var awakendedCore = <draconicevolution:awakened_core>;
    var draconicEnergyCore = <draconicevolution:draconic_energy_core>;
    var draconicChest = <draconicevolution:draconium_chest>;
   	var moonStone = <extrautils2:ingredients:5>;


# Creative Builders Wand
	recipes.addShaped("creative builders wand",
     <extrautils2:itemcreativebuilderswand>, 
	[[<extrautils2:itembuilderswand>, <extrautils2:itembuilderswand>, <extrautils2:itembuilderswand>], 
	[<extrautils2:itembuilderswand>, <extrautils2:itembuilderswand>, <extrautils2:itembuilderswand>], 
	[<extrautils2:itembuilderswand>, <extrautils2:itembuilderswand>, <extrautils2:itembuilderswand>]]);  

# Mekanism Creative Tank
    mods.avaritia.ExtremeCrafting.addShaped("creative tank",
     creativeTank,
    [
    [<forge:bucketfilled>.withTag({FluidName: "amber", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "biofuel", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "biomass", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "crystal", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "essence", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "latex", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "liquidchorus", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "menrilresin", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "if.pink_slime", Amount: 1000})],
    [<forge:bucketfilled>.withTag({FluidName: "if.protein", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sewage", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sludge", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "zunda_soymilk", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.doburoku", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "nigari", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "hootch", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.whiskey", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.vodka", Amount: 1000})],
    [<forge:bucketfilled>.withTag({FluidName: "ethanol", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}),<industrialforegoing:black_hole_tank>,<mekanism:transmitter:1>.withTag({tier: 3}),<immersiveengineering:metal_device0:6>,<mekanism:transmitter:1>.withTag({tier: 3}),<industrialforegoing:black_hole_tank>,<forge:bucketfilled>.withTag({FluidName: "sakura.cocoa_liqueur", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.champagne", Amount: 1000})],
    [<forge:bucketfilled>.withTag({FluidName: "biodiesel", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.beer", Amount: 1000}),<enderio:item_liquid_conduit:2>,<mekanism:machineblock2:11>.withTag({tier: 0, mekData:{}}),<mekanism:machineblock2:11>.withTag({tier: 3, mekData:{}}),<mekanism:machineblock2:11>.withTag({tier: 3, mekData:{}}),<enderio:item_liquid_conduit:2>,<forge:bucketfilled>.withTag({FluidName: "sakura.grape_fluid", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.brandy", Amount: 1000})],
    [<forge:bucketfilled>.withTag({FluidName: "plantoil", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.green_grape_fluid", Amount: 1000}),<immersiveengineering:metal_device0:6>,<mekanism:machineblock2:11>.withTag({tier: 0, mekData:{}}),<enderstorage:ender_storage:1>,<mekanism:machineblock2:11>.withTag({tier: 2, mekData:{}}),<immersiveengineering:metal_device0:6>,<forge:bucketfilled>.withTag({FluidName: "sakura.maple_syrup", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.rum", Amount: 1000})],
    [<forge:bucketfilled>.withTag({FluidName: "sakura.liqueur", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "rocket_fuel", Amount: 1000}),<enderio:item_liquid_conduit:2>,<mekanism:machineblock2:11>.withTag({tier: 1, mekData:{}}),<mekanism:machineblock2:11>.withTag({tier: 1, mekData:{}}),<mekanism:machineblock2:11>.withTag({tier: 2, mekData:{}}),<enderio:item_liquid_conduit:2>,<forge:bucketfilled>.withTag({FluidName: "cloud_seed", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "brine", Amount: 1000})],
    [<forge:bucketfilled>.withTag({FluidName: "liquid_sunshine", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "nutrient_distillation", Amount: 1000}),<industrialforegoing:black_hole_tank>,<mekanism:transmitter:1>.withTag({tier: 3}),<immersiveengineering:metal_device0:6>,<mekanism:transmitter:1>.withTag({tier: 3}),<industrialforegoing:black_hole_tank>,<forge:bucketfilled>.withTag({FluidName: "poison", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "liquidlithium", Amount: 1000})],
    [<forge:bucketfilled>.withTag({FluidName: "xpjuice", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "concrete", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "hot_spring_water", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.hot_spring_water", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "cloud_seed_concentrated", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "fire_water", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.shouchu", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.white_wine", Amount: 1000})],
    [<forge:bucketfilled>.withTag({FluidName: "honey", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "soymilk", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.red_wine", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "vapor_of_levity", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.sake", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.yeast_liquid", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "soysauce", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "heavywater", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.food_oil", Amount: 1000})]
    ]);

# ExU2 Mill
	mods.extendedcrafting.TableCrafting.addShaped("creative mill", <extrautils2:passivegenerator:6>,
	[[amazingCore, amazingCore, <ore:ingotUnstable>, millDragonEgg, millDragonEgg, millDragonEgg, <ore:ingotUnstable>, amazingCore, amazingCore], 
	[amazingCore, <ore:ingotUnstable>, millWind, millWind, <extrautils2:angelring>, millWind, millWind, <ore:ingotUnstable>, amazingCore], 
	[<ore:ingotUnstable>, millLava, <extrautils2:angelring>, speedUpgrade3, moonStone, speedUpgrade3, <extrautils2:angelring>, millFire, <ore:ingotUnstable>], 
	[millDragonEgg, millLava, speedUpgrade3, kleinBottle, draconicEnergyCore, kleinBottle, speedUpgrade3, millFire, millDragonEgg], 
	[millDragonEgg, <extrautils2:angelring>, moonStone, draconicEnergyCore, awakendedCore, draconicEnergyCore, moonStone, <extrautils2:angelring>, millDragonEgg], 
	[millDragonEgg, millLava, speedUpgrade3, sunCrystal, draconicEnergyCore, sunCrystal, speedUpgrade3, millFire, millDragonEgg], 
	[<ore:ingotUnstable>, millLava, <extrautils2:angelring>, speedUpgrade3, moonStone, speedUpgrade3, <extrautils2:angelring>, millFire, <ore:ingotUnstable>], 
	[amazingCore, <ore:ingotUnstable>, millWater, millWater, <extrautils2:angelring>, millWater, millWater, <ore:ingotUnstable>, amazingCore], 
	[amazingCore, amazingCore, <ore:ingotUnstable>, millDragonEgg, millDragonEgg, millDragonEgg, <ore:ingotUnstable>, amazingCore, amazingCore]]);  