import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded avaritia


# *======= Recipes =======*

# Neutron block fix
	recipes.remove(<avaritia:resource:4>);
	recipes.addShaped("Neutron Ingots from Nuggets",
	<avaritia:resource:4>, 
	[[<avaritia:resource:3>, <avaritia:resource:3>, <avaritia:resource:3>],
	[<avaritia:resource:3>, <avaritia:resource:3>, <avaritia:resource:3>], 
	[<avaritia:resource:3>, <avaritia:resource:3>, <avaritia:resource:3>]]);
	recipes.addShapeless("Neutron Ingots from Block", <avaritia:resource:4> * 9, [<avaritia:block_resource>]);

	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_helmet>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_chestplate>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_pants>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_boots>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_sword>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_bow>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_pickaxe>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_shovel>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_axe>);
	mods.avaritia.ExtremeCrafting.remove(<avaritia:infinity_hoe>);

# singularitys
	mods.avaritia.Compressor.add("0",<avaritia:singularity>, 1000, <ore:ingotIron>, true);
	mods.avaritia.Compressor.add("1",<avaritia:singularity:1>, 1000, <ore:ingotGold>, true);
	mods.avaritia.Compressor.add("2",<avaritia:singularity:2>, 1000, <ore:gemLapis>, true);
	mods.avaritia.Compressor.add("3",<avaritia:singularity:3>, 1000, <ore:dustRedstone>, true);
	mods.avaritia.Compressor.add("4",<avaritia:singularity:4>, 1000, <minecraft:quartz>, true);
	mods.avaritia.Compressor.add("5",<avaritia:singularity:5>, 1000, <ore:ingotCopper>, true);
	mods.avaritia.Compressor.add("6",<avaritia:singularity:6>, 1000, <ore:ingotTin>, true);
	mods.avaritia.Compressor.add("7",<avaritia:singularity:7>, 1000, <ore:ingotLead>, true);
	mods.avaritia.Compressor.add("8",<avaritia:singularity:8>, 1000, <ore:ingotSilver>, true);
	mods.avaritia.Compressor.add("9",<avaritia:singularity:9>, 1000, <ore:ingotNickel>, true);
	mods.avaritia.Compressor.add("10",<avaritia:singularity:10>, 1000, <ore:gemDiamond>, true);
	mods.avaritia.Compressor.add("11",<avaritia:singularity:11>, 1000, <ore:gemEmerald>, true);

# Infinity Catalyst
	mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:5>);
	mods.avaritia.ExtremeCrafting.addShapeless("Catalyst", <avaritia:resource:5>, 
	[<ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>, <avaritia:cosmic_meatballs>, 
	<avaritia:ultimate_stew>, <avaritia:endest_pearl>, <avaritia:resource:7>, 
	<draconicevolution:awakened_core>, <ore:blockDraconiumAwakened>, 
	<ore:dragonEgg>,<ore:blockEvilMetal>, <ore:blockDemonicMetal>,
	<biomesoplenty:terrestrial_artifact>,
	<avaritia:singularity>, <avaritia:singularity:1>, <avaritia:singularity:2>,
	<avaritia:singularity:3>, <avaritia:singularity:4>, <avaritia:singularity:5>,
	<avaritia:singularity:6>, <avaritia:singularity:7>, <avaritia:singularity:8>,
	<avaritia:singularity:9>, <avaritia:singularity:10>, <avaritia:singularity:11>]);

# Compression
	var piston = <minecraft:piston>;
	var blackIron = <ore:ingotBlackIron>;
	var cobble3 = <extrautils2:compressedcobblestone:2>;
	var furnace = <avaritiafurnace:fuelcompressor>;

	mods.avaritia.ExtremeCrafting.remove(<avaritia:neutronium_compressor>);
	mods.avaritia.ExtremeCrafting.addShaped("neutronium_compressor",
	<avaritia:neutronium_compressor>,
	[
	[piston, piston, piston, piston, piston, piston, piston, piston, piston],
	[piston, cobble3, cobble3, cobble3, cobble3, cobble3, cobble3, cobble3, piston],
	[piston, cobble3, furnace, furnace, furnace, furnace, furnace, cobble3, piston],
	[piston, cobble3, furnace, <ore:ingotCrystalMatrix>, <extrautils2:compressedcobblestone:4>, <ore:ingotCrystalMatrix>, furnace, cobble3, piston], 
	[piston, cobble3, furnace, <extrautils2:compressedcobblestone:4>, <mekanism:machineblock:7>.withTag({recipeType: 3}), <extrautils2:compressedcobblestone:4>, furnace, cobble3, piston], 
	[piston, cobble3, furnace, <ore:ingotCrystalMatrix>, <extrautils2:compressedcobblestone:4>, <ore:ingotCrystalMatrix>, furnace, cobble3, piston], 
	[piston, cobble3, furnace, furnace, furnace, furnace, furnace, cobble3, piston],
	[piston, cobble3, cobble3, cobble3, cobble3, cobble3, cobble3, cobble3, piston],
	[piston, piston, piston, piston, piston, piston, piston, piston, piston]
	]);

# Neutronium Ingot
	var ni = <ore:ingotCosmicNeutronium>;
# Infinity Catalyst
	var ic = <avaritia:resource:5>;
# Infinity Ingot
	var ii = <ore:ingotInfinity>;
# Crystal Matrix
	var cm = <ore:blockCrystalMatrix>;
	
# Infinity Armor
	mods.avaritia.ExtremeCrafting.addShaped("infinity_helmet",
	<avaritia:infinity_helmet>, 
	[
	[null, null, ni, ni, ni, ni, ni, null, null],
	[null, ni, ii, ii, ii, ii, ii, ni, null],
	[null, ni, null, ic, ii, ic, null, ni, null],
	[null, ni, ii, ii, <draconicadditions:chaotic_helm>.anyDamage(), ii, ii, ni, null],
	[null, ni, ii, ii, ii, ii, ii, ni, null],
	[null, ni, ii, null, ii, null, ii, ni, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null]
	]);

	mods.avaritia.ExtremeCrafting.addShaped("infinity_chestplate",
	<avaritia:infinity_chestplate>, 
	[
	[null, ni, ni, null, null, null, ni, ni, null],
	[ni, ni, ni, null, null, null, ni, ni, ni],
	[ni, ni, ni, null, null, null, ni, ni, ni],
	[null, ni, ii, ii, ii, ii, ii, ni, null],
	[null, ni, ii, ii, ii, ii, ii, ni, null],
	[null, ni, ii, ii, <draconicadditions:chaotic_chest>.anyDamage(), ii, ii, ni, null],
	[null, ni, ii, ii, ii, ii, ii, ni, null],
	[null, ni, ii, ii, ii, ii, ii, ni, null],
	[null, null, ni, ni, ni, ni, ni, null, null]
	]);

	mods.avaritia.ExtremeCrafting.addShaped("infinity_pants",
	<avaritia:infinity_pants>, 
	[
	[ni, ni, ni, ni, ni, ni, ni, ni, ni],
	[ni, ii, ii, ii, <draconicadditions:chaotic_legs>.anyDamage(), ii, ii, ii, ni],
	[ni, ii, ni, ni, ni, ni, ni, ii, ni],
	[ni, ii, ni, null, null, null, ni, ii, ni],
	[ni, ic, ni, null, null, null, ni, ic, ni],
	[ni, ii, ni, null, null, null, ni, ii, ni],
	[ni, ii, ni, null, null, null, ni, ii, ni],
	[ni, ii, ni, null, null, null, ni, ii, ni],
	[ni, ni, ni, null, null, null, ni, ni, ni]
	]);

	mods.avaritia.ExtremeCrafting.addShaped("infinity_boots",
	<avaritia:infinity_boots>, 
	[
	[null, ni, ni, ni, null, ni, ni, ni, null],
	[null, ni, ii, ni, null, ni, ii, ni, null],
	[null, ni, ii, ni, null, ni, ii, ni, null],
	[ni, ni, ii, ni, null, ni, ii, ni, ni],
	[ni, ii, ii, ni, null, ni, ii, ii, ni],
	[ni, ni, ni, ni, <draconicadditions:chaotic_boots>.anyDamage(), ni, ni, ni, ni],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null],
	[null, null, null, null, null, null, null, null, null]
	]);

# Infinity Sword
	mods.avaritia.ExtremeCrafting.addShaped("infinity_sword",
	<avaritia:infinity_sword>, 
	[
	[null, null, null, null, null, null, null, ii, ii],
	[null, null, null, null, null, null, ii, ii, ii],
	[null, null, null, null, null, ii, ii, ii, null],
	[null, null, null, null, ii, ii, ii, null, null],
	[null, cm, null, ii, ii, ii, null, null, null],
	[null, null, cm, <draconicadditions:chaotic_staff_of_power>.anyDamage(), ii, null, null, null, null],
	[null, null, ni, cm, null, null, null, null, null],
	[null, ni, null, null, cm, null, null, null, null],
	[ic, null, null, null, null, null, null, null, null]
	]);
	
# Infinity Bow
	mods.avaritia.ExtremeCrafting.addShaped("infinity_bow",
	<avaritia:infinity_bow>, 
	[
	[null, null, null, ii, ii, null, null, null, null],
	[null, null, ii, null, <ore:blockRockwool>, null, null, null, null],
	[null, ii, null, null, <ore:blockRockwool>, null, null, null, null],
	[ii, null, null, null, <ore:blockRockwool>, null, null, null, null],
	[<draconicadditions:chaotic_bow>.anyDamage(), null, null, null, <ore:blockRockwool>, null, null, null, null],
	[ii, null, null, null, <ore:blockRockwool>, null, null, null, null],
	[null, ii, null, null, <ore:blockRockwool>, null, null, null, null],
	[null, null, ii, null, <ore:blockRockwool>, null, null, null, null],
	[null, null, null, ii, ii, null, null, null, null]
	]);
	
# Infinity Pickaxe
	mods.avaritia.ExtremeCrafting.addShaped("infinity_pickaxe",
	<avaritia:infinity_pickaxe>.withTag({ench: [{lvl: 10 as short, id: 35 as short}]}), 
	[
	[null, ii, ii, ii, ii, ii, ii, ii, null],
	[ii, ii, ii, ii, cm, ii, ii, ii, ii],
	[ii, ii, null, null, <draconicevolution:draconic_pick>.anyDamage(), null, null, ii, ii],
	[null, null, null, null, ni, null, null, null, null],
	[null, null, null, null, ni, null, null, null, null],
	[null, null, null, null, ni, null, null, null, null],
	[null, null, null, null, ni, null, null, null, null],
	[null, null, null, null, ni, null, null, null, null],
	[null, null, null, null, ni, null, null, null, null]
	]);
	
# Infinity Shovel
	mods.avaritia.ExtremeCrafting.addShaped("infinity_shovel",
	<avaritia:infinity_shovel>, 
	[
	[null, null, null, null, null, null, ii, ii, ii],
	[null, null, null, null, null, ii, ii, <ore:blockInfinity>, ii],
	[null, null, null, null, null, null, <draconicevolution:draconic_shovel>.anyDamage(), ii, ii],
	[null, null, null, null, null, ni, null, ii, null],
	[null, null, null, null, ni, null, null, null, null],
	[null, null, null, ni, null, null, null, null, null],
	[null, null, ni, null, null, null, null, null, null],
	[null, ni, null, null, null, null, null, null, null],
	[ni, null, null, null, null, null, null, null, null]
	]);
	
# Infinity Axe
	mods.avaritia.ExtremeCrafting.addShaped("infinity_axe",
	<avaritia:infinity_axe>, 
	[
	[null, null, null, ii, null, null, null, null, null],
	[null, null, ii, ii, ii, ii, ii, null, null],
	[null, null, null, ii, ii, <draconicevolution:draconic_axe>.anyDamage(), ii, null, null],
	[null, null, null, null, null, ii, ni, null, null],
	[null, null, null, null, null, null, ni, null, null],
	[null, null, null, null, null, null, ni, null, null],
	[null, null, null, null, null, null, ni, null, null],
	[null, null, null, null, null, null, ni, null, null],
	[null, null, null, null, null, null, ni, null, null]
	]);
	
# Infinity Hoe
	mods.avaritia.ExtremeCrafting.addShaped("infinity_hoe",
	<avaritia:infinity_hoe>, 
	[
	[null, null, null, null, null, ni, null, null, null],
	[null, ii, ii, ii, ii, ii, ii, null, null],
	[ii, ii, ii, ii, ii, <draconicevolution:draconic_hoe>.anyDamage(), ii, null, null],
	[ii, null, null, null, null, ii, ii, null, null],
	[null, null, null, null, null, ni, null, null, null],
	[null, null, null, null, null, ni, null, null, null],
	[null, null, null, null, null, ni, null, null, null],
	[null, null, null, null, null, ni, null, null, null],
	[null, null, null, null, null, ni, null, null, null]
	]);