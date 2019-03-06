package com.statestr.gcth.scoping

import com.google.inject.Inject
import org.eclipse.xtext.resource.impl.ResourceDescriptionsProvider
import org.eclipse.xtext.resource.IContainer
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EClass
import com.statestr.gcth.bonanza.BonanzaPackage

class BonanzaIndex {
	@Inject ResourceDescriptionsProvider rdp
	@Inject IContainer.Manager cm

	def getContainers(EObject o) {
		val index = rdp.getResourceDescriptions(o.eResource)
		val rd = index.getResourceDescription(o.eResource.URI)
		if (rd !== null) {
			cm.getVisibleContainers(rd, index)
		} else {
			newArrayList
		}
	}

	def getVisibleEObjectDescriptions(EObject o, EClass type) {
		o.getContainers.map [ container |
			container.getExportedObjectsByType(type)
		].flatten
	}

	def getSourcesDescriptions(EObject o) {
		o.getVisibleEObjectDescriptions(BonanzaPackage.eINSTANCE.source)
	}

	def getTransformsDescriptions(EObject o) {
		o.getVisibleEObjectDescriptions(BonanzaPackage.eINSTANCE.transform)
	}
	


}
