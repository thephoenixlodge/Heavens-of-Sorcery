import crafttweaker.events.IEventManager;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.ILivingEvent;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.event.EntityLivingAttackedEvent;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityDefinition;

////Variables

events.onEntityLivingAttacked(function(event as EntityLivingAttackedEvent){
	if(!isNull(event.entity.definition) && event.entity.definition.id == <entity:meecreeps:meecreeps>.id){
		if(event.damageSource.damageType == <damageSource:mist_in_fog>.damageType){
			event.cancel();
		}
	}
});