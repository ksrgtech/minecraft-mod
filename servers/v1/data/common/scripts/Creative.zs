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
	var blackHoleUnit = <industrialforegoing:black_hole_unit>;
	var blackHoleTank = <industrialforegoing:black_hole_tank>;
	var ultCell = <mekanism:basicblock2:3>.withTag({tier: 3});
	var ultProvider = <mekanism:basicblock2:4>.withTag({tier: 3});
    var catalyst = <avaritia:resource:5>;
    var creativeEssence = <mysticalagradditions:stuff:69>;
	var blockAwakended = <ore:blockDraconiumAwakened>;
	var rocketFuel = <forge:bucketfilled>.withTag({FluidName: "rocket_fuel", Amount: 1000});


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
    [<forge:bucketfilled>.withTag({FluidName: "ethanol", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}),blackHoleTank,<mekanism:transmitter:1>.withTag({tier: 3}),<immersiveengineering:metal_device0:6>,<mekanism:transmitter:1>.withTag({tier: 3}),blackHoleTank,<forge:bucketfilled>.withTag({FluidName: "sakura.cocoa_liqueur", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.champagne", Amount: 1000})],
    [<forge:bucketfilled>.withTag({FluidName: "biodiesel", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.beer", Amount: 1000}),<enderio:item_liquid_conduit:2>,<mekanism:machineblock2:11>.withTag({tier: 0, mekData:{}}),<mekanism:machineblock2:11>.withTag({tier: 3, mekData:{}}),<mekanism:machineblock2:11>.withTag({tier: 3, mekData:{}}),<enderio:item_liquid_conduit:2>,<forge:bucketfilled>.withTag({FluidName: "sakura.grape_fluid", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.brandy", Amount: 1000})],
    [<forge:bucketfilled>.withTag({FluidName: "plantoil", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.green_grape_fluid", Amount: 1000}),<immersiveengineering:metal_device0:6>,<mekanism:machineblock2:11>.withTag({tier: 0, mekData:{}}),<enderstorage:ender_storage:1>,<mekanism:machineblock2:11>.withTag({tier: 2, mekData:{}}),<immersiveengineering:metal_device0:6>,<forge:bucketfilled>.withTag({FluidName: "sakura.maple_syrup", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.rum", Amount: 1000})],
    [<forge:bucketfilled>.withTag({FluidName: "sakura.liqueur", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "rocket_fuel", Amount: 1000}),<enderio:item_liquid_conduit:2>,<mekanism:machineblock2:11>.withTag({tier: 1, mekData:{}}),<mekanism:machineblock2:11>.withTag({tier: 1, mekData:{}}),<mekanism:machineblock2:11>.withTag({tier: 2, mekData:{}}),<enderio:item_liquid_conduit:2>,<forge:bucketfilled>.withTag({FluidName: "cloud_seed", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "brine", Amount: 1000})],
    [<forge:bucketfilled>.withTag({FluidName: "liquid_sunshine", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "nutrient_distillation", Amount: 1000}),blackHoleTank,<mekanism:transmitter:1>.withTag({tier: 3}),<immersiveengineering:metal_device0:6>,<mekanism:transmitter:1>.withTag({tier: 3}),blackHoleTank,<forge:bucketfilled>.withTag({FluidName: "poison", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "liquidlithium", Amount: 1000})],
    [<forge:bucketfilled>.withTag({FluidName: "xpjuice", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "concrete", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "hot_spring_water", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.hot_spring_water", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "cloud_seed_concentrated", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "fire_water", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.shouchu", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.white_wine", Amount: 1000})],
    [<forge:bucketfilled>.withTag({FluidName: "honey", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "soymilk", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.red_wine", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "vapor_of_levity", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.sake", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.yeast_liquid", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "soysauce", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "heavywater", Amount: 1000}),<forge:bucketfilled>.withTag({FluidName: "sakura.food_oil", Amount: 1000})]
    ]);

# Mekanism Creative Gas Tank
	mods.avaritia.ExtremeCrafting.addShaped("creative gas tank",
	creativeGasTank,	
	[[sunCrystal, sunCrystal, sunCrystal, <mekanism:gasupgrade>, rocketFuel, <mekanism:gasupgrade>, sunCrystal, sunCrystal, sunCrystal], 
	[sunCrystal, blackHoleTank, <ore:blockCosmicNeutronium>, <mekanism:machineblock2>, rocketFuel, <mekanism:machineblock2>, <ore:blockCosmicNeutronium>, blackHoleTank, sunCrystal], 
	[sunCrystal, <draconicevolution:infused_obsidian>, <ore:blockOsmium>, <avaritia:resource:4>, catalyst, <avaritia:resource:4>, <ore:blockOsmium>, <draconicevolution:infused_obsidian>, sunCrystal], 
	[<mekanism:gasupgrade>, <mekanism:machineblock2>, <mekanism:transmitter:2>.withTag({tier: 3}), awakendedCore, <mekanism:gastank>.withTag({tier: 3}), awakendedCore, <mekanism:transmitter:2>.withTag({tier: 3}), <mekanism:machineblock2>, <mekanism:gasupgrade>], 
	[rocketFuel, rocketFuel, catalyst, <mekanism:gastank>.withTag({tier: 3}), creativeTank, <mekanism:gastank>.withTag({tier: 3}), catalyst, rocketFuel, rocketFuel], 
	[<mekanism:gasupgrade>, <mekanism:machineblock2>, <mekanism:transmitter:2>.withTag({tier: 3}), awakendedCore, <mekanism:gastank>.withTag({tier: 3}), awakendedCore, <mekanism:transmitter:2>.withTag({tier: 3}), <mekanism:machineblock2>, <mekanism:gasupgrade>], 
	[sunCrystal, <draconicevolution:infused_obsidian>, <ore:blockOsmium>, <avaritia:resource:4>, catalyst, <avaritia:resource:4>, <ore:blockOsmium>, <draconicevolution:infused_obsidian>, sunCrystal], 
	[sunCrystal, blackHoleTank, <ore:blockCosmicNeutronium>, <mekanism:machineblock2>, rocketFuel, <mekanism:machineblock2>, <ore:blockCosmicNeutronium>, blackHoleTank, sunCrystal],
	[sunCrystal, sunCrystal, sunCrystal, <mekanism:gasupgrade>, rocketFuel, <mekanism:gasupgrade>, sunCrystal, sunCrystal, sunCrystal]]);  
	recipes.addShapeless("Creative Gas Tank Reset", 
	<mekanism:gastank>.withTag({tier: 4, mekData: {}}), 
	[<mekanism:gastank>.withTag({tier: 4})]);

# ExU2 Creative Mill
	mods.avaritia.ExtremeCrafting.addShaped("creative mill", <extrautils2:passivegenerator:6>,
	[[amazingCore, amazingCore, <ore:ingotUnstable>, millDragonEgg, millDragonEgg, millDragonEgg, <ore:ingotUnstable>, amazingCore, amazingCore], 
	[amazingCore, <ore:ingotUnstable>, millWind, millWind, <extrautils2:angelring>, millWind, millWind, <ore:ingotUnstable>, amazingCore], 
	[<ore:ingotUnstable>, millLava, <extrautils2:angelring>, speedUpgrade3, moonStone, speedUpgrade3, <extrautils2:angelring>, millFire, <ore:ingotUnstable>], 
	[millDragonEgg, millLava, speedUpgrade3, kleinBottle, draconicEnergyCore, kleinBottle, speedUpgrade3, millFire, millDragonEgg], 
	[millDragonEgg, <extrautils2:angelring>, moonStone, draconicEnergyCore, awakendedCore, draconicEnergyCore, moonStone, <extrautils2:angelring>, millDragonEgg], 
	[millDragonEgg, millLava, speedUpgrade3, sunCrystal, draconicEnergyCore, sunCrystal, speedUpgrade3, millFire, millDragonEgg], 
	[<ore:ingotUnstable>, millLava, <extrautils2:angelring>, speedUpgrade3, moonStone, speedUpgrade3, <extrautils2:angelring>, millFire, <ore:ingotUnstable>], 
	[amazingCore, <ore:ingotUnstable>, millWater, millWater, <extrautils2:angelring>, millWater, millWater, <ore:ingotUnstable>, amazingCore], 
	[amazingCore, amazingCore, <ore:ingotUnstable>, millDragonEgg, millDragonEgg, millDragonEgg, <ore:ingotUnstable>, amazingCore, amazingCore]]);  

# Storage Drawers Upgrade Creative Capacity
    mods.avaritia.Compressor.add("drawers upgrade creative capacity",<storagedrawers:upgrade_creative>, 1000, <storagedrawers:upgrade_storage:4>, true);

# Storage Drawers Upgrade Creative Unlimited
    mods.avaritia.ExtremeCrafting.addShaped("drawers upgrade creative unlimited", <storagedrawers:upgrade_creative:1> * 2, 
	[[<ore:blockCrystalMatrix>, blackHoleUnit, catalyst, catalyst, <ore:compressed3xDustBedrock>, catalyst, catalyst, blackHoleUnit, <ore:blockCrystalMatrix>], 
	[blackHoleUnit, <mekanism:basicblock:6>.withTag({tier: 3}), <mekanism:basicblock:6>.withTag({tier: 3}), draconicChest, <avaritiaddons:avaritiaddons_chest>, draconicChest, <mekanism:basicblock:6>.withTag({tier: 3}), <mekanism:basicblock:6>.withTag({tier: 3}), blackHoleUnit], 
	[catalyst, <mekanism:basicblock:6>.withTag({tier: 3}), <ore:blockEvilMetal>, <draconicevolution:chaotic_core>, <draconicevolution:energy_crystal:8>, <draconicevolution:chaotic_core>, <ore:blockEvilMetal>, <mekanism:basicblock:6>.withTag({tier: 3}), catalyst], 
	[catalyst, draconicChest, creativeEssence, <draconicevolution:draconium_capacitor:2>, <ore:ingotInfinity>, <extrautils2:passivegenerator:6>, creativeEssence, draconicChest, catalyst], 
	[<ore:compressed3xDustBedrock>, <avaritiaddons:avaritiaddons_chest>, <draconicevolution:energy_crystal:8>, <extrautils2:rainbowgenerator>, <storagedrawers:upgrade_creative>, <extrautils2:rainbowgenerator>, <draconicevolution:energy_crystal:8>, <avaritiaddons:avaritiaddons_chest>, <ore:compressed3xDustBedrock>], 
	[catalyst, draconicChest, creativeEssence, creativeTank, <ore:ingotInfinity>, creativeGasTank, creativeEssence, draconicChest, catalyst], 
	[catalyst, <mekanism:basicblock:6>.withTag({tier: 3}), <ore:blockEvilMetal>, <draconicevolution:chaotic_core>, <draconicevolution:energy_crystal:8>, <draconicevolution:chaotic_core>, <ore:blockEvilMetal>, <mekanism:basicblock:6>.withTag({tier: 3}), catalyst], 
	[blackHoleUnit, <mekanism:basicblock:6>.withTag({tier: 3}), <mekanism:basicblock:6>.withTag({tier: 3}), draconicChest, <avaritiaddons:avaritiaddons_chest>, draconicChest, <mekanism:basicblock:6>.withTag({tier: 3}), <mekanism:basicblock:6>.withTag({tier: 3}), blackHoleUnit], 
	[<ore:blockCrystalMatrix>, blackHoleUnit, catalyst, catalyst, <ore:compressed3xDustBedrock>, catalyst, catalyst, blackHoleUnit, <ore:blockCrystalMatrix>]]);
	
	recipes.addShapeless("Creative Storage Upgrade Duplication", 
	<storagedrawers:upgrade_creative:1> * 2, 
	[<storagedrawers:upgrade_creative:1>]);

# Creative Essence
    recipes.addShaped("Creative Essence",
    <mysticalagradditions:stuff:69>,
    [
    [<ore:blockInsaniumEssence>,<ore:essenceTier6>,<ore:blockInsaniumEssence>],
    [<ore:essenceTier6>,<mysticalagriculture:master_infusion_crystal>,<ore:essenceTier6>],
    [<ore:blockInsaniumEssence>,<ore:essenceTier6>,<ore:blockInsaniumEssence>]
    ]);

	recipes.addShaped("Creative Essence",
    <mysticalagradditions:stuff:69>,
    [
    [<ore:blockInsaniumEssence>,<ore:essenceTier6>,<ore:blockInsaniumEssence>],
    [<ore:essenceTier6>,<mysticalagriculture:infusion_crystal>,<ore:essenceTier6>],
    [<ore:blockInsaniumEssence>,<ore:essenceTier6>,<ore:blockInsaniumEssence>]
    ]);

# Draconic Evolution Creative Flux Capacitor
	mods.avaritia.ExtremeCrafting.addShaped(4, <draconicevolution:draconium_capacitor:2>.withTag({Energy: 1073741823}),
	[[null, null, null, null, blockAwakended, null, null, null, null], 
	[null, null, amazingCore, amazingCore, blockAwakended, amazingCore, amazingCore, null, null], 
	[null, amazingCore, creativeEssence, creativeEssence, blockAwakended, creativeEssence, creativeEssence, amazingCore, null], 
	[null, amazingCore, creativeEssence, awakendedCapacitor, awakendedCapacitor, awakendedCapacitor, creativeEssence, amazingCore, null], 
	[blockAwakended, blockAwakended, blockAwakended, awakendedCapacitor, <avaritia:resource:5>, awakendedCapacitor, blockAwakended, blockAwakended, blockAwakended], 
	[null, amazingCore, creativeEssence, awakendedCapacitor, awakendedCapacitor, awakendedCapacitor, creativeEssence, amazingCore, null], 
	[null, amazingCore, creativeEssence, creativeEssence, blockAwakended, creativeEssence, creativeEssence, amazingCore, null], 
	[null, null, amazingCore, amazingCore, blockAwakended, amazingCore, amazingCore, null, null], 
	[null, null, null, null, blockAwakended, null, null, null, null]]);