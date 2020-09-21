////imports
import crafttweaker.events.IEventManager;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.ILivingEvent;
import crafttweaker.event.EntityLivingUseItemEvent.All;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.potions.IPotionEffect;


events.onEntityLivingUseItemFinish(function(eatEvent as Finish){
	val ironberriesID = "rustic:ironberries";
	val playerEntity = eatEvent.player;
	if(eatEvent.item.definition.id == ironberriesID){
		val weightEffect = <potion:potioncore:weight>.makePotionEffect(200, 1) as IPotionEffect;
		playerEntity.addPotionEffect(weightEffect);
	}
});